Rails.application.routes.draw do

  resources :companies, only: [:index]
  resources :jobs, only: [:index]
  root 'companies#index'

end
