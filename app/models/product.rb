class Product < ApplicationRecord
	acts_as_list
	
	has_many :listings, :dependent => :destroy

	scope :visible, lambda { where(:visible => true) }
  	scope :invisible, lambda { where(:visible => false) }
  	scope :sorted, lambda { order("name ASC") }
  	scope :newest_first, lambda { order("created_at DESC") }
  	scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"]) }
  	scope :category_group, lambda {|ctype| where(:category => ctype) }

  	

  	validates :name, :presence => true,
					 :length => { :maximum => 255 },
					 :uniqueness => { :case_sensitive => false }
	validates_presence_of :description
	validates_presence_of :category
	validates_presence_of :icon_path
end
