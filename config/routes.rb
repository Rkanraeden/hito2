Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users
  # devise_for :users, controllers: {
  #       registrations: 'users/registrations'
  # }
  # resources :posts do
  #     resources :comments, shallow: true
  # end

  #resources :comments, only: [:index]


  get 'home/index'
  root to: "home#index"
  resources :sales
  resources :inventories
  resources :customers
  resources :purchases
  resources :type_documents
  resources :communes
  resources :regions
  resources :suppliers
  resources :products
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
