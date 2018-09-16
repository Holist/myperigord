class ProductsController < ApplicationController


  def index
    @products = Product.all
    @order_product = current_order.order_products.new
  end

  def show
    @product = Product.find(params[:id])
  end

end
