require 'byebug'

class Song < ApplicationRecord
    belongs_to :album 
    has_many :song_playlists 
    has_many :playlists, through: :song_playlists 

    def self.search(search)
        @songs = RSpotify::Track.search(search)
    end 

    def self.top_five
      if @songs 
        top_5 = @songs.first(5) 
        # byebug

        top_5.each do |t|
          # byebug
          #info to initialize artist 
          art_name = t.album.artists[0].name 
          art_genre = t.album.artists[0].genres
          artist = Artist.create(name: art_name , genre: art_genre )

          #info to initialize album  
          album_name = t.album.name
          date = t.album.release_date 
          album = Album.create(name: album_name , release_date: date, album_img: nil, artist_id: artist.id ) 

          #info to initialize song  
          Song.create(name: t.name, album_id: album.id )
        end 
          p "do nothing"
        end 
   

    
      end 

end 


       



   



