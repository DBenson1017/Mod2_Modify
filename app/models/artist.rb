require 'dotenv/load'
require 'rspotify'


class Artist < ApplicationRecord
    has_many :albums
    has_many :songs, through: :albums

    client_id =ENV['client_id']
    client_secret = ENV['client_secret']
    RSpotify::authenticate(client_id, client_secret)



def self.search_by_artist(input)
    # input = user_artist.to_s 
    artists = RSpotify::Artist.search(input)
    new_a = artists.first
    Artist.create(name: new_a.name, genre: new_a.genres)
end 


end
