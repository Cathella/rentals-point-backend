Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'users#login'
      resources :properties, only: [:index, :create, :show, :update, :destroy]
      resources :user_profiles, only: [:index, :create, :show, :update]
    end
  end  
end
