class Listing < ApplicationRecord
	acts_as_list :scope => :product
	belongs_to :product
	has_many :order_items

	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted, lambda { order("name ASC") }
	scope :newest_first, lambda { order("created_at DESC") }

  	validates :name, :presence => true,
					 :length => { :maximum => 255 },
					 :uniqueness => {:case_sensitive => false, :scope => :product_id}
	validates_presence_of :short_desc
	validates_presence_of :long_desc

	validates :orig_price, :presence => true,
						   :numericality => true
		 
	validates :curr_price, :numericality => true
end
