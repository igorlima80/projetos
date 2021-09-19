class Document < ApplicationRecord
  belongs_to :document_type
  #belongs_to :person

  belongs_to :documentable, polymorphic: true

  has_one_attached :attachment

end
