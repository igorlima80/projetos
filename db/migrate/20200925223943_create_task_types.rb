class CreateTaskTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :task_types do |t|
      t.references :stage, null: false, foreign_key: true
      t.string :name
     

      t.timestamps
    end
  end
end
