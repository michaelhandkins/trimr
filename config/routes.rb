Rails.application.routes.draw do
  devise_for :users
  resource :barberdash, only: [:show]
  resource :dashboard, only: [:show]
  root "static_pages#index"
  get "team", to: 'static_pages#team'
  get "careers", to: 'static_pages#careers'
  get "privacy", to: 'static_pages#privacy'
  get "all_barbers", to: 'static_pages#all_barbers'
  resources :barbers, only: [:index, :show]
  namespace :barber do
    resources :barbers, only: [:new, :create, :show, :edit, :update] do
      resources :haircuts, only: [:new, :create, :index]
      resources :photos, only: [:new, :create, :index]
    end
  end
end
