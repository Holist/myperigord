class AddPriceToOrderProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_products, :price, :integer
    add_monetize :order_products, :price, currency: { present: false }
  end
end
