class AddPaymentTypeIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :payment_type_id, :integer
  end
end
