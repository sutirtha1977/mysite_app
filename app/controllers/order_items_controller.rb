class OrderItemsController < ApplicationController
  def create
    @order = current_order
    if @order.order_items.where(listing_id: params[:order_item][:listing_id]).exists?
      @order.order_items.where(listing_id: params[:order_item][:listing_id]).first.increment!(:quantity)
      # flash[:notice] = 'Updated quantity.'
    else
      @order_item = @order.order_items.new(order_item_params)
      @order.user_id = params[:order_item][:user_id]
      @order.save
      # flash[:notice] = 'New items added to cart.'
    end
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    if @order.order_items.count > 0 
      @order_items = @order.order_items   
      @order.save
    else
      @order_items = @order.order_items   
      @order.destroy 
    end
     
  end
  
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :listing_id)
  end
end
