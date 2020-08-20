class Playlist < ApplicationRecord
    has_many :song_playlists 
    has_many :songs, through: :song_playlists



# def self.photo(input) 
#     if input.songs == nil 
#         Song.all.sample.album.album_img 
#     else 
#     input.songs.sample.album.album_img
#     end 
# end 

end
