class StoreController < ApplicationController
 include CurrentCart 
 before_action :set_cart

 def index
    @products = Product.order(:title)
  
  
end

def about
end

def footer  
end

end