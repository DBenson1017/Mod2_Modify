class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :album_id

      t.timestamps
    end
  end
end
