class State < ApplicationRecord
  belongs_to :country

  def name_with_state
    "#{name} - #{state&.acronym}"
  end
  
end
