class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  def current_order
    if user_signed_in?
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.create(customer: current_user.specific)
      end
    end
  end

end
