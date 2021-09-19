class AddMenu < SeedMigration::Migration
  def up
    profissional = MenuItem.create name: 'Pessoas', icon: 'fab fa-user-check', link: '#', position: 1, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Administradores', icon: 'fas fa-user-friends', link: 'people_path', position: 2, target: '_self', permission: 'manage', permission_check: 'Person', menu_item: profissional, published: true, active_test: "controller_name == 'people'"  
      

    planning = MenuItem.create name: 'Planejamento', icon: 'fas fa-project-diagram', link: '#', position: 2, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Etapas', icon: 'fas fa-bars', link: 'stages_path', position: 1, target: '_self', permission: 'manage', permission_check: 'Stages', menu_item: planning, active_test: "controller_name == 'stages'", published: true
      MenuItem.create name: 'Tipos de Tarefas', icon: 'fas fa-tasks', link: 'task_types_path', position: 2, target: '_self', permission: 'manage', permission_check: 'SubStages', menu_item: planning, active_test: "controller_name == 'task_types'", published: true
      MenuItem.create name: 'Tipos de Construções', icon: 'fas fa-landmark', link: 'construction_types_path', position: 3, target: '_self', permission: 'manage', permission_check: 'ConstructionType', menu_item: planning, published: true, active_test: "controller_name == 'construction_types'"  
      MenuItem.create name: 'Tipos de Projetos', icon: 'fas fa-archive', link: 'project_types_path', position: 4, target: '_self', permission: 'manage', permission_check: 'ProjectType', menu_item: planning, published: true, active_test: "controller_name == 'project_types'"        
    
    construcao = MenuItem.create name: 'Gestão de Projetos', icon: 'fas fa-archway', link: '#', position: 4, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
     
      MenuItem.create name: 'Construções', icon: 'fa fa-store-alt', link: 'constructions_path', position: 4, target: '_self', permission: 'manage', permission_check: 'Construction', menu_item: construcao, published: true, active_test: "controller_name == 'constructions'"     
      
    
    admin = MenuItem.create name: 'Admin', icon: 'fas fa-lock', link: '#', position: 100, target: '_self', permission: 'manage', permission_check: 'all', menu_item_id: nil, active_test: "", published: true
      MenuItem.create name: 'Usuários', icon: 'fas fa-users', link: 'users_path', position: 1, target: '_self', permission: 'manage', permission_check: 'User', menu_item: admin, active_test: "controller_name == 'users'", published: true
      MenuItem.create name: 'Estados', icon: 'fas fa-map', link: 'states_path', position: 2, target: '_self', permission: 'manage', permission_check: 'State', menu_item: admin, active_test: "controller_name == 'states'", published: true
      MenuItem.create name: 'Países', icon: 'fas fa-globe-americas', link: 'countries_path', position: 3, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'countries'", published: true
      MenuItem.create name: 'Cidades', icon: 'fas fa-map-marked', link: 'cities_path', position: 4, target: '_self', permission: 'manage', permission_check: 'City', menu_item: admin, active_test: "controller_name == 'cities'", published: true
      MenuItem.create name: 'Bancos', icon: 'fas fa-university', link: 'banks_path', position: 6, target: '_self', permission: 'manage', permission_check: 'Bank', menu_item: admin, active_test: "controller_name == 'banks'", published: true
      MenuItem.create name: 'Tipos de Telefone', icon: 'fa fa-phone', link: 'phone_types_path', position: 7, target: '_self', permission: 'manage', permission_check: 'PhoneType', menu_item: admin, active_test: "controller_name == 'phone_types'", published: true
      
      
      MenuItem.create name: 'Configurações', icon: 'fas fa-cogs', link: 'settings_path', position: 9, target: '_self', permission: 'manage', permission_check: 'Kinships', menu_item: admin, active_test: "controller_name == 'settings'", published: true
      MenuItem.create name: 'Menu', icon: 'fas fa-bars', link: 'menu_items_path', position: 99, target: '_self', permission: 'manage', permission_check: 'MenuItem', menu_item: admin, active_test: "controller_name == 'menu_items'", published: true
  end

  def down
    MenuItem.delete_all
  end
end
