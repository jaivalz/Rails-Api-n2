Rails.application.routes.draw do
  get 'catalog/index'

  resources :vehicles
  resources :manufacturers

  mount Api::V1::Base => '/'
  
  root 'catalog#index'

  

end
