class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

  def create
    @order.paid!
    redirect_to order_path(@order)
  end

private

  def set_order
    @order = current_order
  end
end
