Rails.application.routes.draw do
  devise_for :users
  resource :barberdash, only: [:show]
  resource :dashboard, only: [:show]
  root "static_pages#index"
  resources "static_pages"
  resources :barbers, only: [:index, :show]
  namespace :barber do
    resources :barbers, only: [:new, :create, :show, :edit, :update] do
      resources :haircuts, only: [:new, :create, :index]
      resources :photos, only: [:new, :create, :index]
    end
  end
end
