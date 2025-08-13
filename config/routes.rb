Rails.application.routes.draw do
  # get 'reviews/index'
  # get 'reviews/show'
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
