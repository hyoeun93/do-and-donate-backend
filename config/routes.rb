Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      post '/authenticate', to: 'auth#create'
      get '/authenticate', to: 'auth#show'

      resources :users, only: [:create] do
        resources :user_challenges, only: [:index, :create, :update, :destroy]
      end
      
      resources :challenges, only: [:index, :show] do
        resources :challengecomments, only: [:index, :create]
      end 

      resources :pictures, only: [:index, :create]

      resources :donors, only: [:index]

      resources :charities, only: [:index]

      resources :comments, only: [:create, :destroy]
    end
  end 
end
