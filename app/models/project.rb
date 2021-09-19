class Project < ApplicationRecord

  enum status: {
    initiated: 0,
    finished: 1        
  }  

  enum advice: {
    cau: 0,
    crea: 1        
  }  

  belongs_to :project_type
  belongs_to :state
  
  belongs_to :construction

  has_one_attached :attachment
end
