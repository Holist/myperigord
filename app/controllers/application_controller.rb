class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_order


  def current_order
    if user_signed_in?
      if session[:order_id].present? && Order.find(session[:order_id]).status == "pending"
        order ||= Order.find(session[:order_id])
        return order
      else
        order = Order.create(customer: current_user.specific)
        session[:order_id] = order.id
        return order
      end
    end
  end

  def configure_permitted_parameters
    user_data = [
      :first_name,
      :last_name,
      :address,
      :phone,
      :siret,
      :compagny,
      :email,
      :password,
      :actable_id,
      :actable_type
    ]

    devise_parameter_sanitizer.permit(:sign_up, keys: user_data)
    devise_parameter_sanitizer.permit(:account_update, keys: user_data)
  end

end
