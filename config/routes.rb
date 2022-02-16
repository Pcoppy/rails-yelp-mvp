Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/restaurant"
  # get "/restaurant/new"
  # post "/restaurant"
  # get "restaurant/:id"
  # get "restaurant/:id/reviews/new"
  # post "restaurant/:id/reviews"
  resources :restaurants, only: [:new, :create, :show, :index ] do
    resources :reviews, only: [ :new, :create ]
  end
  get "restaurant/:id/review/top", to: "review#top"
end
