class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :number
      t.references :phone_type, null: false, foreign_key: true
      t.references :phonable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
