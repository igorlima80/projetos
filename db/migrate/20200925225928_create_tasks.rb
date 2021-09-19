class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :task_type, null: false, foreign_key: true
      t.references :construction, null: false, foreign_key: true
      t.integer :status
      t.integer :percentage
      t.monetize :budget_amount
      t.date :start_date
      t.date :end_date
      t.monetize :cost

      t.timestamps
    end
  end
end
