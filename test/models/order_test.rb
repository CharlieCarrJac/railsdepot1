require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "should not save order without name" do
    order = Order.new
    assert_not order.save, "Saved the order without a name"
  end
end




  # test "the truth" do
  #   assert true
  # end

