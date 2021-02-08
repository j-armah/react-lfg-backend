Rails.application.routes.draw do
  resources :reviews
  resources :play_sessions
  resources :games
  resources :user_games
  resources :users

  post "/", to: "auth#login"
  get "/profile", to: "users#profile"
  post "/login", to: "auth#login"
  post "/register", to: "auth#register"
  get "/user_games/:id/users/:id", to: "users#show"
  post "/signup", to: "auth#register"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
