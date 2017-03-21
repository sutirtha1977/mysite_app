Rails.application.routes.draw do

  get 'order_items/create'

  get 'order_items/destroy'

	root to: "public#home"

  	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  	devise_for :users

	get 'public/about'
	get 'public/team'
	get 'public/listing'
	get 'public/listing_detail'
	get 'public/gallery'
	get 'public/cart'

	# resource :cart, only: [:show]

	resources :order_items, only: [:create, :destroy]

	resources :products do
		member do
	  		get :delete
		end
	end

	resources :listings do
		member do
		  get :delete, :toggle_visible
		end
	end

	resources :teams do
		member do
		  get :delete
		end
	end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
