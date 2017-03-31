class OrderItemsController < ApplicationController
  before_action :find_order

  def create
    # @order = current_order
    @item_name = Listing.find_by_id(params[:order_item][:listing_id]).name

    if @order.order_items.where(listing_id: params[:order_item][:listing_id]).exists?
      @order.order_items.where(listing_id: params[:order_item][:listing_id]).first.increment!(:quantity)
      # @order.save
      flash[:info] = 'Quantity of (' + @item_name + ') incremented by 1.'
    else
      @order_item = @order.order_items.new(order_item_params)
      @order.user_id = params[:order_item][:user_id]
      @order.save
      flash[:notice] = @item_name + ' added to cart.'
    end
  end

  def destroy
    # @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    if @order.order_items.count > 0 
      @order_items = @order.order_items   
      @order.save
    else
      @order_items = @order.order_items   
      @order.destroy 
    end
    flash[:alert] = 'Item deleted from the cart.'
  end

  def increase
    # @order = current_order
    @order.order_items.where(listing_id: params[:listing_id]).first.increment!(:quantity)
    @order_items = @order.order_items   
  end
  def decrease
    # @order = current_order
    @order.order_items.where(listing_id: params[:listing_id]).first.decrement!(:quantity)
    @order_items = @order.order_items   
  end

private
  def find_order
    @order = current_order
  end

  def order_item_params
    params.require(:order_item).permit(:quantity, :listing_id)
  end
end
