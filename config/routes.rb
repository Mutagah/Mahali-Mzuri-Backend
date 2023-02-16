 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :rooms
      resources :room_types
      resources :users
      resources :user_profiles
      resources :user_room_bookings
      post '/login', to: 'auth#create'
    end 
  end
end
