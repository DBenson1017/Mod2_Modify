class Song < ApplicationRecord
    belongs_to :album 
    has_many :song_playlists 
    has_many :playlists, through: :song_playlists 

    def self.search(search)
      @results = []
        songs = RSpotify::Track.search(search)
        songs.each do |s|
         @results <<  s
        end 

        # Song.create(name: new_a.name, genre: new_a.genres)
    end 
   


end
