Rails.application.routes.draw do
  resources :companies
  root 'companies#index'

  get 'companies_per_week', controller: :charts
  get 'cumulative_companies', controller: :charts
end
