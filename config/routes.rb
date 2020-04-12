Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products

  # Agregamos la ruta por defecto al ingresar a ...:3000
  root 'products#index'
  
end
