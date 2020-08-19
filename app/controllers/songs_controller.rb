require 'byebug'

class SongsController < ApplicationController

    def index
        if params[:search] == nil
            #does nothing
        else params[:search]
        @songs = Song.search(params[:search])
        end 
        Song.top_five
        @tracks  = Song.all
    end 
        

    def search 
        Song.search_by_song(:search)
        redirect_to new_search_path 
    end 

    def show 
        @track = Song.find(params[:id])
    end 

    private 
    
    def song_params
        params.require(:song).permit(:name, album_id: :search)
    end 



end
