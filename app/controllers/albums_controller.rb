class AlbumsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy


    def create
      @album = current_user.albums.build(album_params)
      if @album.save
        flash[:success] = "Album created!"
        redirect_to root_url
      else
        @feed_items = []
        render 'static_pages/home'
      end
    end
  
    def destroy
        @album.destroy
        flash[:success] = "Album deleted"
        redirect_to request.referrer || root_url
    end
  
    private
  
      def album_params
        params.require(:album).permit(:name)
      end

      def correct_user
        @album = current_user.albums.find_by(id: params[:id])
        redirect_to root_url if @album.nil?
      end
end