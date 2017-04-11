Rails.application.routes.draw do

  # get 'order_items/create'

  # get 'order_items/destroy'

	root to: "public#home"

  	mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  	devise_for :users

	get 'public/about'
	# resource :cart, only: [:show]

	resources :order_items, only: [:create, :destroy] do
		put 'decrease', on: :member
		put 'increase', on: :member
	end

	resources :public do
		collection do
			get :offering, :team, :gallery, :cart, :listing, :listing_detail
		end
	end

	resources :listings do
		# resources :reviews, only: [:create, :update, :destroy]
		resources :reviews
	end
	# resources :listings do
	# 	resources :reviews, only: [:create, :update, :destroy] do
	# 		member do
	# 			get :delete
	# 		end
	# 	end
	# end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
