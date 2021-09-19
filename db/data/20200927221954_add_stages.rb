class AddStages < SeedMigration::Migration
  def up
    Stage.create(id:1, name: "Serviços Preliminares e Gerais") 
      TaskType.create(name: "Serv. técnicos , projetos, taxas, desp. inic., inst. provis., barracão, consumos e limpeza de obra", stage_id: 1)       

    Stage.create(id:2, name: 'Infraestrutura')          
        TaskType.create(name:"Demolições", stage_id: 2 )
        TaskType.create(name:"Limpeza do Terreno", stage_id: 2 )
        TaskType.create(name:"Escavações Mecânicas", stage_id: 2 )  
        TaskType.create(name:"Escavações Manuais" , stage_id: 2 ) 
        TaskType.create(name:"Aterro e Apiloamento" , stage_id: 2 )    
        TaskType.create(name:"Locações da Obra" , stage_id: 2 )
        TaskType.create(name:"Fundações Superficiais", stage_id: 2)
        TaskType.create(name:"Fundações Profundas", stage_id: 2 )
        TaskType.create(name:"Impermeabilização das Fundações", stage_id: 2)            

    Stage.create(id:3, name: 'Supraestrutura')
        TaskType.create(name:"Concreto armado, Inclusive Forma", stage_id: 3 )
        TaskType.create(name:"Laje de Forro", stage_id: 3 )
        TaskType.create(name:"Estrutura de Madeira", stage_id: 3 )
        TaskType.create(name:"Estrutura Metálica", stage_id: 3 )

    Stage.create(id:4, name: 'Paredes e Painéis')
        TaskType.create(name:"Alvenaria em Tijolo Furado", stage_id: 4 )  
        TaskType.create(name:"Alvenaria em Tijolo Maciço", stage_id: 4 ) 
        TaskType.create(name:"Alvenaria em Bloco Estrutural", stage_id: 4 )
        TaskType.create(name:"Paredes de Concreto", stage_id: 4 )
        TaskType.create(name:"Vergas e Contravergas de Concreto", stage_id: 4 )

           
    Stage.create(id:5, name: 'Esquadrias')
        TaskType.create(name:"Porta de Entrada Completa", stage_id: 5 )
        TaskType.create(name:"Portas Internas Completa", stage_id: 5 )
        TaskType.create(name:"Janelas", stage_id: 5 )
        TaskType.create(name:"Basculantes", stage_id: 5 )
        
    Stage.create(id:6, name: 'Vidros e Plásticos')
        TaskType.create(name:"Lisos", stage_id: 6 )
        TaskType.create(name:"Fantasia", stage_id: 6 )
        TaskType.create(name:"Temperado/Laminado", stage_id: 6 )
        TaskType.create(name:"Tijolo de Vidro", stage_id: 6 )
        TaskType.create(name:"Plásticos e Acrílicos", stage_id: 6 )    


    Stage.create(id:7, name: 'Coberturas')
        TaskType.create(name:"Estrutura para Telhado", stage_id: 7 )
        TaskType.create(name:"Telhas", stage_id: 7 )
        TaskType.create(name:"Calhas e Rufos", stage_id: 7 )

    Stage.create(id:8, name: 'Impermeabilizações')
        TaskType.create(name:"Terraços e Coberturas", stage_id: 8 )
        TaskType.create(name:"Pisos e Paredes do Subsolo", stage_id: 8 )
        TaskType.create(name:"Boxes de Banheiros", stage_id: 8 )
        TaskType.create(name:"Jardineiras", stage_id: 8 )

    Stage.create(id:9, name: 'Revestimentos Internos')
        TaskType.create(name:"Chapisco", stage_id: 9 )
        TaskType.create(name:"Emboço", stage_id: 9 )
        TaskType.create(name:"Reboco", stage_id: 9 )
        TaskType.create(name:"Reboco Paulista", stage_id: 9 )
        TaskType.create(name:"Gesso", stage_id: 9 )
        TaskType.create(name:"Cerâmica", stage_id: 9 )
        TaskType.create(name:"Pastilhas de Vidro", stage_id: 9 )
        TaskType.create(name:"Porcelanato", stage_id: 9 )

    Stage.create(id:10,  name: 'Forros')
        TaskType.create(name:"Gesso", stage_id: 10 )
        TaskType.create(name:"PVC", stage_id: 10 )  
        TaskType.create(name:"Madeira", stage_id: 10 )
        
    Stage.create(id:11,  name: 'Revestimentos Externos')
        TaskType.create(name:"Chapisco", stage_id: 11 )
        TaskType.create(name:"Emboço", stage_id: 11 )  
        TaskType.create(name:"reboco", stage_id: 11 )
        TaskType.create(name:"Reboco Paulista", stage_id: 11 )            
        TaskType.create(name:"Cerâmica", stage_id: 11 )
        TaskType.create(name:"Pastilhas de Vidro", stage_id: 11 )
        TaskType.create(name:"Porcelanato", stage_id: 11 )
        
    Stage.create(id:12,  name: 'Pintura')
        TaskType.create(name:"Emassamento", stage_id: 12 )    
        TaskType.create(name:"Pintura Interna", stage_id: 12 )
        TaskType.create(name:"Pintura Externa", stage_id: 12 )        
        TaskType.create(name:"Pintura sobre Madeira", stage_id: 12 )    
        TaskType.create(name:"Pintura sobre Concreto", stage_id: 12 )
        TaskType.create(name:"Pintura sobre Metal", stage_id: 12 )
        TaskType.create(name:"Textura", stage_id: 12 ) 
        
    Stage.create(id:13,  name: 'Pisos')
        TaskType.create(name:"Contrapiso", stage_id: 13 )
        TaskType.create(name:"Cerâmica", stage_id: 13 )
        TaskType.create(name:"Cimentado Rústico", stage_id: 13 )                  
        TaskType.create(name:"Cimentado Liso", stage_id: 13 )      
        TaskType.create(name:"Madeira", stage_id: 13 )      
        TaskType.create(name:"Piso Vinílico", stage_id: 13 )
        TaskType.create(name:"Carpete", stage_id: 13 ) 
        TaskType.create(name:"Porcelanato", stage_id: 13 )
        
    Stage.create(id:14,  name: 'Acabamentos')
        TaskType.create(name:"Rodapés", stage_id: 14 )    
        TaskType.create(name:"Soleiras", stage_id: 14 )
        TaskType.create(name:"Peitoris", stage_id: 14 )
   
    Stage.create(id:15,  name: 'Instalações Elétricas e Telefônicas')
        TaskType.create(name:"Tubulações e Caixas nas Lajes", stage_id: 15 )
        TaskType.create(name:"Tubulações e Caixas nas Alvenarias", stage_id: 15 )
        TaskType.create(name:"Enfiação", stage_id: 15 )
        TaskType.create(name:"Quadros de Distribuição", stage_id: 15 )
        TaskType.create(name:"Tomadas, Interruptores e Disjuntores", stage_id: 15 )
        TaskType.create(name:"Quadro de Entrada de Energia", stage_id: 15 )
        TaskType.create(name:"Interfone", stage_id: 15 )

    Stage.create(id:16,  name: 'Instalações Hidráulicas')
        TaskType.create(name:"Cavalete e Hidrômetro", stage_id: 16 )
        TaskType.create(name:"Tubulação de Água Fria", stage_id: 16 )
        TaskType.create(name:"Tubulação de Água Quente", stage_id: 16 )
        TaskType.create(name:"Reservatório de Água Fria", stage_id: 16 )
        TaskType.create(name:"Equipamento de Aquecimento de Água", stage_id: 16 )
        TaskType.create(name:"Reservatório de Água Quente", stage_id: 16 )

    Stage.create(id:17,  name: 'Instalações de Esgoto e Águas Pluviais')
        TaskType.create(name:"Tubulação", stage_id: 16 )    
        TaskType.create(name:"Caixas", stage_id: 16 )          
        TaskType.create(name:"Fossa Séptica", stage_id: 16 )
        TaskType.create(name:"Sumidouro", stage_id: 16 )            
        TaskType.create(name:"Rede de Drenagem do Lote", stage_id: 16 )       
        
    Stage.create(id:18,  name: 'Louças e Metais')
        TaskType.create(name:"Vasos Sanitários", stage_id: 18 )    
        TaskType.create(name:"Lavatórios", stage_id: 18 )    
        TaskType.create(name:"Pia de Cozinha", stage_id: 18 )    
        TaskType.create(name:"Bancadas", stage_id: 18 )    
        TaskType.create(name:"Tanque", stage_id: 18 )    
        TaskType.create(name:"Torneiras e Registros", stage_id: 18 )    

    Stage.create(id:19,  name: 'Complementos')
        TaskType.create(name:"Limpeza Final e Calafetes", stage_id: 19 )
          
    Stage.create(id:20,  name: 'Outros Serviços')
        TaskType.create(name:"Granito", stage_id: 20 )       
             

  end

  def down
    Stage.delete_all
  end
end
