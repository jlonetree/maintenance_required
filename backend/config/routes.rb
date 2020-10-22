Rails.application.routes.draw do
  resources :score_boards
  resources :scores
  resources :paddle_games
  resources :messages
  resources :message_boards
  resources :main_screens
  resources :usernames
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
