class ProductorsController < ApplicationController
  def index
    @productors = Productor.all
  end

  def show
    @productor = Productor.find(params[:id])
  end
end
