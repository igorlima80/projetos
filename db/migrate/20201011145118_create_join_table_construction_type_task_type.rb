class CreateJoinTableConstructionTypeTaskType < ActiveRecord::Migration[6.0]
  def change
    create_join_table :construction_types, :task_types do |t|
      # t.index [:construction_type_id, :task_type_id]
      # t.index [:task_type_id, :construction_type_id]
    end
  end
end
