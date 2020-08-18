class Album < ApplicationRecord
    belongs_to :artist
    has_many :songs 
    
    def self.search(search)
        albums = RSpotify::Album.search(search)
        # artist = albums.first.artists
    end

end
