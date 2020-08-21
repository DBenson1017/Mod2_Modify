Rails.application.routes.draw do
  get 'home/index'
  resources :users
  resources :playlists
  resources :song_playlists
  resources :songs
  resources :albums
  resources :artists
  
  root "home#index"

  get "/songs", to: "songs#index", as: "songs_index"
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
