Rails.application.routes.draw do
  devise_for :users
  resources :messages, only: [ :create ]

  get "up" => "rails/health#show", as: :rails_health_check

  root "dashboard#index"
end
