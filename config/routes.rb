Rails.application.routes.draw do
  resources :restaurants do
  	collection do
  		get :top
  		# get 'top', to 'restaurants#top'
  	end

  	member do 
  		get :chef
  	end

  	resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy] 
end
