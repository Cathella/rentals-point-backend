Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :properties, only: [:index, :create, :show]
    end
  end  
end
