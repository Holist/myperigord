class OrderProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @order_products = OrderProduct.where(order: current_order)
    @order = current_order
  end

  def create
    @product = Product.find(params[:format])
    @order = current_order
    @order_product = @order.order_products.find_or_create_by(product: @product)

    if @order_product.quantity.nil? 
      @order_product.quantity = 1
    else
      @order_product.quantity += 1
    end

    @order_product.price = @product.price
    @order_product.save
    session[:order_id] = @order.id
    @order.amount_update
  end

  def update
    @order = current_order
    @order_product = @order.order_products.find(params[:id])
    @order_product.update_attributes(order_product_params)
    @order.amount_update
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
