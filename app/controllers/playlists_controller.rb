class PlaylistsController < ApplicationController

    def show 
        @playlist = Playlist.find(params[:id])
    end 

    def new 
        @playlist = Playlist.new 

        @users = User.all
        @playlists = Playlist.all
    end 

    def create 
        @playlist = Playlist.create(playlist_params)
        redirect_to playlist_path(@playlist)
    end 



    private 

    def playlist_params 
        params.require(:playlist).permit(:name, :user_id) 
    end
end
