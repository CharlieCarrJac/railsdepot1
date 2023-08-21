class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
def quantity
  # define quantity here
  self[:quantity] || 1
end

def total_price
  if quantity.nil?
  0
  else  
  product.price * quantity
end
end
end