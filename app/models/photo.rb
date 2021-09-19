class Photo < ApplicationRecord
  belongs_to :work_diary
  
  has_one_attached :image, dependent: :destroy
end
