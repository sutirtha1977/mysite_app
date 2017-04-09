class ReviewsController < ApplicationController
	before_action :get_data
	before_action :find_review, only: [:edit, :update, :destroy]

	def create
		@review = Review.new(review_params)
		@review.listing_id = @list_details.id
		@review.user_id = current_user.id
		@review.save
		
		# flash[:notice] = "Thanks for your review"
		render 'public/listing_detail.js.erb'
	end

	def update
		@review.update(review_params)
		# flash[:notice] = "Review updated successfully"
		render 'public/listing_detail.js.erb'
	end

	def destroy
		@review.destroy
		# flash[:alert] = "Review deleted successfully"
		render 'public/listing_detail.js.erb'
	end

private
	def review_params
		params.require(:review).permit(:rating, :comment)
	end

	def get_data
		@list_details = Listing.find(params[:listing_id])
		@order_item = current_order.order_items.new
	end

	def find_review
		@review = Review.find(params[:id])		
	end

end
