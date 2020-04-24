Rails.application.routes.draw do
  resources :clinics
  resources :appointments
  resources :users
  post '/login', to: 'auth#create', as: 'login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
