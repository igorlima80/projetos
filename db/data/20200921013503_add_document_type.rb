class AddDocumentType < SeedMigration::Migration
  def up
    DocumentType.create!(name: "Carteira de Trabalho e Prev. Social", code: "CTPS")
    DocumentType.create!(name: "Registro Geral", code: "RG")
    DocumentType.create!(name: "Cadastro de Pessoa Física", code: "CPF")
    #DocumentType.create!(name: "Passaporte", code: "PASS")
    DocumentType.create!(name: "Título de Eleitor", code: "TE")
    DocumentType.create!(name: "Certificado de Reservista", code: "CR")
    DocumentType.create!(name: "Carteira de Motorista", code: "CM")
    #DocumentType.create!(name: "Ordem dos Advogados do Brasil", code: "OAB")
    DocumentType.create!(name: "Cons. Reg. de Engenharia e Arquitetura", code: "CREA")
    #DocumentType.create!(name: "Associação Brasileira de Imprensa", code: "ABI")
    #DocumentType.create!(name: "Conselho Regional de Farmácia", code: "CRF")
    #DocumentType.create!(name: "Conselho Regional de Medicina", code: "CRM")
    #DocumentType.create!(name: "Conselho Regional de Odontologia", code: "CRO")
    #DocumentType.create!(name: "Conselho Regional de Administração", code: "CRA")
    #DocumentType.create!(name: "Conselho Regional de Contabilidade", code: "CRC")
    DocumentType.create!(name: "Inscrição Estadual", code: "IE")
    DocumentType.create!(name: "Matrícula Funcional", code: "MATR")
    #DocumentType.create!(name: "Gabinete de Identificação Policial", code: "GIP")
    DocumentType.create!(name: "Certidão de Casamento", code: "CCA")
    #DocumentType.create!(name: "Certidão de Óbito", code: "CO")
    DocumentType.create!(name: "Certidão de Nascimento", code: "CN")
    #DocumentType.create!(name: "Certidão da Dívida Ativa", code: "CDA")
    DocumentType.create!(name: "Registro individual do cidadão", code: "RIC")
    DocumentType.create!(name: "Número do programa de integração social", code: "PIS_PASEP")
    DocumentType.create!(name: "Cadastro especifico do INSS", code: "INSS")
    DocumentType.create!(name: "Número do identificação do trabalho", code: "NIT")
    DocumentType.create!(name: "Projeto Arquitetônico", code: "")
    DocumentType.create!(name: "Projeto Estrutural", code: "")  
    DocumentType.create!(name: "Projeto Elétrico", code: "")  
    DocumentType.create!(name: "Projeto Hidrossanitário", code: "")    
    DocumentType.create!(name: "Projeto de Impermeabilização", code: "")      
    DocumentType.create!(name: "Projetos Complementares", code: "")        
    DocumentType.create!(name: "Projeto da Execução", code: "")          
    DocumentType.create!(name: "Contrato", code: "")
    DocumentType.create!(name: "Alvará/licença de obra", code: "")
    
            
      
      
      
  end

  def down
    DocumentType.delete_all
  end
end
