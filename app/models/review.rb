class Review < ApplicationRecord
	belongs_to :listing
	belongs_to :user
	scope :newest_first, lambda { order("created_at DESC") }
end
