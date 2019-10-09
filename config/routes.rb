Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do 
      resources :users, only: [:create]
      
      resources :challenges, only: [:index]

      resources :donors, only: [:index]

      resources :charities, only: [:index]

      resources :user_challenges, only: [:index, :update, :destroy]

      resources :comments, only: [:create, :destroy]
    end
  end 
end
