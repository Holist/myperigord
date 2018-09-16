class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.where(customer: current_user.specific)
  end

  def show
    @order = Order.find(params[:id])
    @order_products = @order.order_products
  end

  def create
    # customer = current_user
    # order_products = current_order.order_products
    # order  = Order.create!(amount: teddy.price, user: current_user)
    redirect_to new_order_payment_path(current_order)
  end
end
