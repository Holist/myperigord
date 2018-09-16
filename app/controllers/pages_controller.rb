class PagesController < ApplicationController
  def home
    @products = Product.all
    @productors = Productor.all
    @current_order = current_order
  end
end
