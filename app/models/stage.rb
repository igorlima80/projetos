class Stage < ApplicationRecord
    has_many :task_types, dependent: :destroy
    accepts_nested_attributes_for :task_types, allow_destroy: true
end
