class OrderItemsController < ApplicationController
  def create
    @order = current_order
    if !@order.order_items.where(listing_id: params[:order_item][:listing_id]).exists?
      @order_item = @order.order_items.new(order_item_params)
      @order.user_id = params[:order_item][:user_id]
      @order.save
      session[:order_id] = @order.id
    end
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
  
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :listing_id)
  end
end
