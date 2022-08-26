Rails.application.routes.draw do
  resources :tickets
  resources :solicitudes_facturas
  resources :retornos
  resources :comisiones
  resources :depositos
  resources :movimientos
  resources :clientes
  resources :agentes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
