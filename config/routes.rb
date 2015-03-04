Rails.application.routes.draw do
  root to: 'visitors#index'

  resources :beta_users
end
