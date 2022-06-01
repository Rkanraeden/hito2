Rails.application.routes.draw do
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
