 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_profiles
    end 
  end
end
