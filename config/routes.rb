Rails.application.routes.draw do
  
  resources :project_types
  resources :work_diaries
  resources :bank_accounts
  resources :banks
  resources :tasks
  resources :task_types
  resources :stages
  
  resources :constructions do
    resources :tasks
    end 

  resources :construction_types
  resources :document_types
  
  resources :people do
    resources :employments    
  end
  
  resources :analyzes 
  resources :cities
  resources :countries
  resources :menu_items
  resources :phone_types
  resources :settings
  resources :states
  resources :users
  
  devise_for :users, path: 'u'

  post 'utils/postal_code'
  post 'utils/cities'
  get 'utils/cities'

  root 'constructions#index'
  mount Crono::Web, at: '/crono'
end
