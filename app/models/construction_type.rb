class ConstructionType < ApplicationRecord
   
    has_and_belongs_to_many :task_types, dependent: :destroy
    accepts_nested_attributes_for :task_types

end
