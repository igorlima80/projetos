class Person < ApplicationRecord
  has_ancestry

  has_one_attached :photo
  has_one :account

   # para cadastro dos dependentes nested
   belongs_to :person, inverse_of: :people, optional: true
   has_many :people, inverse_of: :person, dependent: :destroy
   accepts_nested_attributes_for :people, allow_destroy: true
   

  belongs_to :user, optional: true
  belongs_to :city
  belongs_to :place, optional: true
  #belongs_to :county, class_name: "City", foreign_key: "county_id", optional: true
  
  has_many :addresses, dependent: :destroy, as: :addressable
  has_many :phones, dependent: :destroy, as: :phonable
  
  has_many :documents, dependent: :destroy, as: :documentable
  accepts_nested_attributes_for :documents
  

  has_many :employments, dependent: :destroy
  accepts_nested_attributes_for :employments, allow_destroy: true

  accepts_nested_attributes_for :user, allow_destroy: true
  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :phones, allow_destroy: true

  validates :cpf, cpf: true
  validates :name, :rg, :birth, presence: true
  #validates :registration, :admission, :business_email, :place, presence: { unless: :person }
  validates :user, presence: { unless: :person }
 

  # para jogar dependentes no ancestry
  #before_save :set_parent_id
  


  def full_description
    "#{name} (CPF: #{cpf} )" 
  end


  def age
    now = Time.now.utc.to_date
    now.year - self.birth.year - (self.birth.to_date.change(:year => now.year) > now ? 1 : 0)
  end

 
end
