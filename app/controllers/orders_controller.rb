class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.where(customer: current_user.specific)
  end

  def show
    @order = Order.find(params[:id])
    @order_products = @order.order_products
  end


end
