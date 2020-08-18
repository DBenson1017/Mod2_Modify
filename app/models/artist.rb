


class Artist < ApplicationRecord
    has_many :albums
    has_many :songs, through: :albums

#     client_id =ENV['CLIENT_ID']
#     client_secret = ENV['CLIENT_SECRET']

#     RSpotify::authenticate('253b08d224cf40519d901b5312e06f2c', '3d22290b11c74beeb5016bf7b2b5cee5')

# #     export CLIENT_ID = 253b08d224cf40519d901b5312e06f2c
# # export CLIENT_SECRET = 3d22290b11c74beeb5016bf7b2b5cee5



def self.search_by_artist(input)
    # input = user_artist.to_s 
    artists = RSpotify::Artist.search(input)
    new_a = artists.first
    Artist.create(name: new_a.name, genre: new_a.genres)
end 


end
