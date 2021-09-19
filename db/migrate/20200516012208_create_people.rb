class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :father
      t.string :mother
      t.date :birth
      t.string :cpf
      t.string :rg
      t.references :user, foreign_key: true
      t.references :city, foreign_key: true      

   
      t.string :business_email
     

      t.timestamps
    end
  end
end
