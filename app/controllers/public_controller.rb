class PublicController < ApplicationController
	skip_before_action :authenticate_user!
	before_action :get_menu_data

	def home
	  	@products = Product.category_group('PRODUCT').visible
	  	@services = Product.category_group('SERVICE').visible
	end

	def about
	  	# @all_categories = Product.visible			
	end

	def offering
		@all_categories = Product.visible	
	end

	def team
	  	@teams = Team.sort_pos		
	end

	def listing
		@listing = Listing.where(:visible => true, :product_id => params[:product_id])
	end

	def listing_detail
		@list_details = Listing.find(params[:id])
	end

	def gallery	
	end

	def cart
		@order_items = current_order.order_items
		@order = current_order
	end

private
	def get_menu_data
		if user_signed_in?
			@order_item = current_order.order_items.new
		end
	  	@products = Product.category_group('PRODUCT').visible
	  	@services = Product.category_group('SERVICE').visible
		# @all_categories = Product.visible
	  	@listings_service = Listing.joins(:product)
	  						.select('listings.*,products.name as cat_name')
	  						.where(:listings => {:visible => true}, :products => {:visible => true, :category => 'SERVICE'})
	  						# .group(:product_id,:position)
	  	@listings_product = Listing.joins(:product)
	  						.select('listings.*,products.name as cat_name')
	  						.where(:listings => {:visible => true}, :products => {:visible => true, :category => 'PRODUCT'})
	  						# .group(:product_id,:position)
	  	# Listing.joins(:product).where(:listings => {:visible => true}, :products => {:visible => true, :category => 'SERVICE'}).group(:product_id,:position)	
		# Listing.joins(:product).where(:listings => {:visible => true}, :products => {:visible => true, :category => 'PRODUCT'}).group(:product_id)
	end
end
