Directorio::Application.routes.draw do
  devise_for :users

  resources :negocios do 
post :search, :on => :collection
  end
root :to => 'negocios#index'
end
