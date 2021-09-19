class AddProjectType < SeedMigration::Migration
  def up
    ProjectType.create name: 'Topográfico'
    ProjectType.create name: 'Planta Baixa'
    ProjectType.create name: 'Projeto da Fachada'
    ProjectType.create name: 'Projeto Executivo'
    ProjectType.create name: 'Projeto Legal'
    ProjectType.create name: 'Projeto Luminotécnico'
    ProjectType.create name: 'Projeto Hidráulico'
    ProjectType.create name: 'Projeto Elétrico'
    ProjectType.create name: 'PFUI - Proposta de Financiamento de Unidade Isolada'
  end

  def down
    ProjectType.delete_all
  end
end
