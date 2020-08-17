require 'dotenv/load'
require 'rspotify'


class Spotify

client_id =ENV['client_id']
client_secret = ENV['client_secret']
RSpotify::authenticate(client_id, client_secret)


# create_table "artists", force: :cascade do |t|
#     t.string "name"
#     t.string "genre"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

def search_by_artist(user_artist)
    input = user_artist.to_s 
    artists = RSpotify::Artist.search(input)
    new_a = artists.first
    Artist.create(name: new_a.name, genre: new_a.genre)
end 
   

end 

search_by_artist(Lady Gaga)