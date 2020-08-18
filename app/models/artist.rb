


class Artist < ApplicationRecord
    has_many :albums
    has_many :songs, through: :albums


def self.search_by_artist(input)
    artists = RSpotify::Artist.search(input)
    new_a = artists.first
    Artist.create(name: new_a.name, genre: new_a.genres)
end 


end
