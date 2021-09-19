class Construction < ApplicationRecord
  
  enum pattern: {
        popular: 0,
        medium: 1,
        high: 2        
  } 
  
  monetize :expected_budget_cents
  
  belongs_to :construction_type
  
  has_many :addresses, dependent: :destroy, as: :addressable
  accepts_nested_attributes_for :addresses

  has_many :documents, dependent: :destroy, as: :documentable
  accepts_nested_attributes_for :documents

  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks


  has_many :projects, dependent: :destroy
  accepts_nested_attributes_for :projects

 

  def full_description
    "#{self.construction_type.name} - #{self.area} m²" 
  end

  after_create :create_tasks

  def create_tasks    

      self.construction_type.task_types.each do |tt|      
          puts "task type: "
          puts tt.name
          task = self.tasks.build
          task.status = "registered"
          task.task_type_id = tt.id
          self.save        
      end      
  end
  

end
