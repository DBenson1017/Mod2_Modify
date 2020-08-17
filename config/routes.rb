Rails.application.routes.draw do
  resources :users
  resources :playlists
  resources :song_playlists
  resources :songs
  resources :albums
  resources :artists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
