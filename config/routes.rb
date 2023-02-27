 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  resources :car_bookings
  
  namespace :api do
    namespace :v1 do
      resources :cars
      resources :rooms
      resources :room_services
      resources :room_types
      resources :user_meal_bookings
      resources :users
      resources :user_profiles
      resources :user_room_bookings
      resources :meals
      post '/login', to: 'auth#create'
    end 
  end
end
