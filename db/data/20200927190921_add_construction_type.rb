class AddConstructionType < SeedMigration::Migration
  def up
    ConstructionType.create name: 'Sobrado'
    ConstructionType.create name: 'Casa Térrea'
    ConstructionType.create name: 'Prédio Residencial'
    ConstructionType.create name: 'Prédio Comercial'
  end

  def down
    ConstructionType.delete_all
  end
end
