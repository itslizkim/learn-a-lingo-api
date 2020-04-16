Rails.application.routes.draw do
  resources :languages
  resources :img_cards
  resources :word_cards
  resources :trails
  resources :flash_cards
  resources :games
  resources :lessons
  resources :users
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
