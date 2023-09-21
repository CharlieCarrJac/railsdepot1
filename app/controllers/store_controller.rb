class StoreController < ApplicationController
 include CurrentCart 
 before_action :set_cart

 def index
    @products = Product.order(:title)
    
end

def about
end

def news
end

def footer  
end

def shipping 
end

def privacy  
end

def terms  
end

def faqs  
end

def claims  
end



end