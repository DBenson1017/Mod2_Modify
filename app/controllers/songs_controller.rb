class SongsController < ApplicationController

    def index
        if params[:search] == nil
            "the page loaded without a search"
        else params[:search]
        @songs = Song.search(params[:search])
        end 
      
    end 
        

    def search 
        Song.search_by_song(:search)
        redirect_to new_search_path 
    end 

    def search_params
    end 

    private 
    
    def song_params
        params.require(:song).permit(:name, album_id: :search)
    end 



end
