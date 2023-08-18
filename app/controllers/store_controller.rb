class StoreController < ApplicationController
  
 def index
    @products = Product.order(:title)
  if session[:counter].nil?
  
  end
end

  

end