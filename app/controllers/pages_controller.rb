class PagesController < ApplicationController
  def home
    @products = Product.all.sample(8)
  end
end
