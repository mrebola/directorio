Directorio::Application.routes.draw do
  resources :negocios
root :to => 'negocios#index'
end
