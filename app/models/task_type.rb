class TaskType < ApplicationRecord
  belongs_to :stage

  def full_description
    "Etapa: #{self.stage.name} - Tarefa: #{self.name}" 
  end

end
