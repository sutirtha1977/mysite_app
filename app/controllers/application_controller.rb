class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      if Order.where(user_id: current_user.id).exists?
        Order.find_by_user_id(current_user.id)
      else
        Order.new
      end 
    end
  end
  
end
