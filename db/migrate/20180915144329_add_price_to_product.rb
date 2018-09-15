class AddPriceToProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :price, :integer
    add_monetize :products, :price, currency: { present: false }
  end
end
