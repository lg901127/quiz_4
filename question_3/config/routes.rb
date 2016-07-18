Rails.application.routes.draw do
  root "companies#index", defaults: {format: :json}
  resources :companies, defaults: {format: :json}
end
