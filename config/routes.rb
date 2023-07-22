Rails.application.routes.draw do
  get 'users/Authentication'
  namespace :api do
    namespace :v1 do
      resources :users, only: %i[index create destroy]
      resources :cars, only: %i[index create show update destroy]
      resources :reservations
      post 'login', to: 'authentication#create'
      post 'register', to: 'users#create'
      get '/api/v1/reservations', to: 'api/v1/reservations#index'
    end
  end
end
