class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :name
      t.string :email
      t.string :address
      t.string :city
      t.integer :zipcode
      t.string :state
      t.string :phone

      t.timestamps
    end
  end
end
