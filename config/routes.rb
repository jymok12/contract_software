Rails.application.routes.draw do
  get 'home/index'

  resources :people do
    collection do
      get :roomid
    end
  end
  root 'home#index'

end
