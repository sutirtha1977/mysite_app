class ReviewsController < ApplicationController
	before_action :find_listing


	def create
		@review = Review.new(review_params)
		@review.listing_id = @listing.id
		@review.user_id = current_user.id
		@review.save
	end

	def update
		
	end

private
	def review_params
		params.require(:review).permit(:rating, :comment)
	end

	def find_listing
		@listing = Listing.find(params[:listing_id])
	end

end
