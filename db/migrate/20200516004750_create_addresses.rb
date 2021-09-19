class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :description
      t.string :street
      t.string :number
      t.string :complement
      t.string :district
      t.string :zipcode
      t.references :city, null: false, foreign_key: true
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
