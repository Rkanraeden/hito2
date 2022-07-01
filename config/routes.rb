Rails.application.routes.draw do
  devise_for :users
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
