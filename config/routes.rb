Rails.application.routes.draw do


get 'products', to: 'products#index', as:'products'
get 'products/:id', to: 'products#show', as:'product', id: /\d+/
get 'products/new', to: 'products#new', as:'new_product'
post 'products', to: 'products#create'







root "products#index"














  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
