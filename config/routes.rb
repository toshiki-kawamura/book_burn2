Rails.application.routes.draw do
  devise_for :users
  root to: 'books#index'

  resources :books do
    resources :comments, only: :create
    member do
      get 'genre_page'
    end
  end
  resources :users, only: :show
end
