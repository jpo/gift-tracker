Rails.application.routes.draw do
  root to: 'customers#index'

  resources :customers do
    get :search, on: :collection
    resources :gifts
  end

  resources :users, controller: 'users', only: Clearance.configuration.user_actions
end
