class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
def quantity
  # define quantity here
end

def total_price
  product.price * quantity
end
end
