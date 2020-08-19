class SongPlaylistsController < ApplicationController

    def new 
        @song_playlist = SongPlaylist.new
        @songs = Song.all
        @playlist = Playlist.all
        @song_id = params[:id]
    end 

 
  def create
    @song_playlist = SongPlaylist.create(song_playlist_params)
    redirect_to playlist_path(@song_playlist.playlist.id)
  end


private 

def song_playlist_params
    params.require(:song_playlist).permit(:song_id, :playlist_id)
end 

end
