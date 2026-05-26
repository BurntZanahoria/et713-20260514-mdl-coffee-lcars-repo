Rails.application.routes.draw do
  root "beans#index"

  resources :beans
  resources :suppliers
  get "analysis", to: "beans#analysis"

  get "up" => "rails/health#show", as: :rails_health_check
end
