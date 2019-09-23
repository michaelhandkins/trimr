Rails.application.routes.draw do
  devise_for :users
  root "static_pages#index"
  resources "static_pages"
  resources :barbers, only: [:index, :show]
  namespace :barber do
    resources :barbers, only: [:new, :create, :show]
    resources :haircuts, only: [:new, :create, :index]
  end
end
