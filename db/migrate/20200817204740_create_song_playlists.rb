class CreateSongPlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :song_playlists do |t|
      t.integer :song_id
      t.integer :playlist_id

      t.timestamps
    end
  end
end
