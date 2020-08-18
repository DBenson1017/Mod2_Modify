# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Playlist.destroy_all

u1 = User.create(username: 'devin_un', password: '1234', name: 'Devin')
u2 = User.create(username: 'Iuri_un', password: '1234', name: 'Iuri')
u3 = User.create(username: 'Ian_un', password: '1234', name: 'Ian')

pl1 = Playlist.create(name: 'SummerPlaylist', user_id: User.all.sample.id)
pl2 = Playlist.create(name: 'FallPlaylist', user_id: User.all.sample.id)
pl3 = Playlist.create(name: 'WinterPlaylist', user_id: User.all.sample.id)



