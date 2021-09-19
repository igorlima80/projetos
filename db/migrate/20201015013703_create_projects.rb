class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.references :project_type, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true
      
      t.references :construction, null: false, foreign_key: true
      t.integer :status
      t.integer :advice
      t.string :advice_number
      t.string :rt_number

      t.timestamps
    end
  end
end
