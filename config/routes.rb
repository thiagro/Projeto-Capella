Rails.application.routes.draw do
  resources :epis
  resources :uniformes
 
  
  get 'home/index'
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
