class PlaylistsController < ApplicationController

    def show 
        @playlist = Playlist.find_by(params[:id])
    end 


    private 

    def playlist_params 
        params.require(:playlist).permit(:name, :user_id) 
    end
end
