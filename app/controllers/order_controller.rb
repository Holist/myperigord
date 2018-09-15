class OrderController < ApplicationController
  def index
  end

  def show
    @order_products = current_order.order_products
  end
end
