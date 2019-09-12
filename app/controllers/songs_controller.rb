class SongsController < ApplicationController
    def create
        song = Song.new(song_params)
    song.playlist = Playlist.find(params[:playlist_id])
    if song.save
      redirect_to song.playlist, notice: 'song added!'
    else
      redirect_to playlist_path , notice: 'unable to add song'
    end
    
end
    def destroy 
        song = Song.find(params[:id])
        song.destroy
        redirect_to playlist_path(song.playlist) , notice: 'borraste la canciòn'
    end


private

def song_params
    params.require(:song).permit(:name, :artist, :playlist_id)
    
  end 
end



