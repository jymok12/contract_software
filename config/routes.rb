Rails.application.routes.draw do
  get 'home/index'
  
  resources :people

  root 'home#index'
end
