require 'byebug'

class Song < ApplicationRecord
    belongs_to :album 
    has_many :song_playlists 
    has_many :playlists, through: :song_playlists 
   

    #connects to the songs_controller for API call
    def self.search(search)  
        @songs = RSpotify::Track.search(search)
    end 

    #is called by songs_controller, creates artist/album/song for top5 results, all associated 
    def self.top_five
      @results = []
      
     
      if @songs 
        top_5 = @songs.first(5) 
        top_5.each do |t|
        
          #info to initialize artist 
          art_name = t.album.artists[0].name 
          art_genre = t.album.artists[0].genres
          artist = Artist.create(name: art_name , genre: art_genre )

          #info to initialize album  
          album_name = t.album.name
          date = t.album.release_date 
          album = Album.create(name: album_name , release_date: date, album_img: nil, artist_id: artist.id ) 

          #info to initialize song  
          @results <<  Song.create(name: t.name, album_id: album.id )
          # byebug
         
        end 
        end 
      end 

end 


       



   



