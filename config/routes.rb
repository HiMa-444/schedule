Rails.application.routes.draw do
  get 'sches/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sches
end
