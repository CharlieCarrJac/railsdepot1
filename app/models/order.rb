class Order < ApplicationRecord
	belongs_to :payment_type

	has_many :line_items, dependent: :destroy

	enum pay_type: {
		"Check"			=> 0,
		"Credit card"	=> 1,
		"Purchase order" => 2
	}

validates :name, :address, :email, presence: true
validates :pay_type, inclusion: pay_types.keys  

validates :payment_type_id, presence: true
validates :payment_type_id, inclusion: { in: [1, 2, 3] }

def add_line_items_from_cart(cart)
	cart.line_items.each do |item|
		item.cart_id = nil
		line_items << item
	end
end
end
