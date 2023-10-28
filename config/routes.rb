Rails.application.routes.draw do
  
  devise_for :users
  resources :customers
  

  devise_scope :user do
    get 'users/sign_out' => "devise/sessions#destroy"
end
  
  
  root 'store#index', as: 'store_index'
  
  get 'store/about'
  get 'store/news'
  get 'store/privacy'
  get 'store/terms'
  get 'store/faqs'
  get 'store/claims'
  get 'store/shipping'
  get 'store/purchase'

  get '/images/:filename', to: 'images#show'


  resources :orders
  resources :line_items
  resources :carts
  resources :line_items, only: [:destroy]

  resources :products do
    get :who_bought, on: :member 
end
  end

  #get 'store/index'
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
#get 'store_about', to: 'store#about'
# get 'store_about_about' , to: 'store#about'
# get '/store_about#index', to: 'store_about#index'


