class AddFieldsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :customer, foreign_key: true
    remove_reference :orders, :user, foreign_key: true
  end
end
