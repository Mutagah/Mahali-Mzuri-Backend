 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  
  get "/access_token", to:"mpesa_payments#generate_access_token"
  post "/stkpush", to: 'mpesa_payments#stkpush'
  post "/mpesa_payment_success/callback_url", to:"mpesa_payment_successes#create"
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
      post "specific_rooms", to: "rooms#specific_rooms"
    end 
  end
end
