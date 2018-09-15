class OrdersController < ApplicationController
  before_action :authenticate_user! 
  def index
    @orders = Order.all
  end

  def show
    @order_products = current_order.order_products
  end
end
