module ApplicationHelper

	def images(img_path, img_options = {}, cType)
		case cType
		when "team" then 
			default = File.join("team", "default_avatar.jpg")
		when "listing" then
			default = File.join("listings", "om.jpg")
		end	

		if File.exist? Rails.root.join('app', 'assets', 'images', img_path)
			image_tag(img_path, img_options)
		else
			image_tag(default, img_options)
		end		
	end
	
	def check_image(img_path)
		if File.exist? Rails.root.join('app', 'assets', 'images', img_path)
			return true
		else
			return false
		end
	end

	def product_icon(product)
		if product.icon_path?
			image_tag(product.icon_path, size: "30x30")
		else
			image_tag(File.join('icons' , 'icon1.svg'), size: "30x30")
		end
	end
	
	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end
end
