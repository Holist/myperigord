class PagesController < ApplicationController
  def home
    @products = Product.all
    @productors = Productor.all
    @order = current_order
  end
end
