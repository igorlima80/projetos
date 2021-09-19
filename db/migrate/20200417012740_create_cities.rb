class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :gia
      t.string :ibgeid
      t.string :latitude
      t.string :longitude
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
