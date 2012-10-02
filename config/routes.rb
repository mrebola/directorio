Directorio::Application.routes.draw do
  devise_for :users

  resources :negocios
root :to => 'negocios#index'
end
