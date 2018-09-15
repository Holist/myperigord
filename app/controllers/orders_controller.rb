class OrdersController < ApplicationController
  before_action :authenticate_user! 
  
  def index
    @orders = Order.where(customer: current_user.specific)
  end

  def show
    @order = current_order
    @order_products = current_order.order_products
  end
end
