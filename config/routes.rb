Rails.application.routes.draw do
  get 'merhaba/index'
  devise_for :kullanicis, :controllers => { registrations: 'registrations' }
  resources :gorevs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "merhaba#index"
end
