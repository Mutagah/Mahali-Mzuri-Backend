 # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
Rails.application.routes.draw do
  resources :user_profiles
  namespace :api do
    namespace :v1 do
      resources :users
    end 
  end
end
