class ProductsController < ApplicationController
  @products = Product.all
  @order_item = current_order.order_items.new
end
