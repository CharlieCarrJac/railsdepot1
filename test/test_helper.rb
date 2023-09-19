ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors, with: :threads)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...

require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "adding unique products to the cart" do
    cart = Cart.new
    product1 = Product.create(name: "Product 1", price: 10)
    product2 = Product.create(name: "Product 2", price: 20)

    cart.add_product(product1)
    assert_equal 1, cart.line_items.count

    cart.add_product(product2)
    assert_equal 2, cart.line_items.count
  end

  test "adding duplicate products to the cart" do
    cart = Cart.new
    product = Product.create(name: "Product", price: 10)

    cart.add_product(product)
    assert_equal 1, cart.line_items.count

    cart.add_product(product)
    assert_equal 1, cart.line_items.count
    assert_equal 2, cart.line_items.first.quantity
  end
end

  
end
