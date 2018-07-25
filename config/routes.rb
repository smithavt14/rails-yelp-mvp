Rails.application.routes.draw do

  resources :restaurants, only: [:index, :show, :new, :create]  do
    resources :reviews, only: [:index, :new, :create]
  end
end


  # get "restaurants", to: "restaurants#all"
  # get "restaurants/:id", to: "restaurants#show"
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants/:id/reviews/new", to: "reviews#new", as: 'reviews'
  # post "restaurants/:id/reviews", to: "reviews#create"
