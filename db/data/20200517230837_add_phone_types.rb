class AddPhoneTypes < SeedMigration::Migration
  def up
    PhoneType.create!(name: 'Celular')
    PhoneType.create!(name: 'Residencial')
    PhoneType.create!(name: 'Empresarial')
  end
  
  def down
    PhoneType.delete_all
  end
end
