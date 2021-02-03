Rails.application.routes.draw do
  resources :reviews
  resources :play_sessions
  resources :games
  resources :user_games
  resources :users

  post "/", to: "auth#login"
  get "/profile", to: "users#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
