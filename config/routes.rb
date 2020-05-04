Rails.application.routes.draw do
  get 'home/index'
  resources :people do
    collection do
      get :room
    end
  end
  root 'home#index'
end
