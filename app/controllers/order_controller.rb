class OrderController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order_products = current_order.order_products
  end
end
