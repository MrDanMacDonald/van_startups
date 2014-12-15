Rails.application.routes.draw do

  resources :companies, only: [:index]
  root 'companies#index'

end
