Rails.application.routes.draw do
  
  
  
  root 'store#index', as: 'store_index'
  
  get 'store/about'
  get 'store/news'


  resources :products 
  resources :orders
  resources :line_items
  resources :carts

  end

  #get 'store/index'
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
#get 'store_about', to: 'store#about'
# get 'store_about_about' , to: 'store#about'
# get '/store_about#index', to: 'store_about#index'


