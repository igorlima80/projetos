class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.integer :area
      t.monetize :expected_budget
      t.references :construction_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
