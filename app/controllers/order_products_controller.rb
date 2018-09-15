class OrderProductsController < ApplicationController
  before_action :authenticate_user! 
  def create
    @order = current_order
    @order_product = @order.order_products.new(order_product_params)
    @order_product.save
    session[:order_id] = @order.id
  end

  def update
    @order = current_order
    @order_product = @order.order_products.find(params[:id])
    @order_product.update_attributes(order_product_params)
    @order_products = @order.order_products
  end

  def destroy
    @order = current_order
    @order_product = @order.order_products.find(params[:id])
    @order_product.destroy
    @order_products = @order.order_products
  end

  private
  def order_product_params
    params.require(:order_product).permit(:quantity, :product_id, :price, :order_id)
  end
end
