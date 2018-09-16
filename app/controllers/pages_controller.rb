class PagesController < ApplicationController
  def home
    @products = Product.all
    @productors = Productor.all
  end
end
