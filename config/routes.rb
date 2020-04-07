Rails.application.routes.draw do
  root to: 'invoices#index'
  resources :companies, only: [:new, :create]
  resources :invoices, only: [:index, :new, :create]
  resources :statements, only: [:new, :create]
  resources :departments, only: [:new, :create]
  resources :clients, only: [:new, :create]
end
