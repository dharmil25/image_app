class ImagesController < ApplicationController

    def create
      @album = Album.find(image_params[:album_id])
      @image = @album.images.build(image_params)
      if @image.save
        flash[:success] = "Image Added!"
        redirect_to @album
      else
        flash[:success] = 'Validation error. Check tagline limit(50 characters), Add the tagline and Image before uploading'
        redirect_to @album
      end
    end
  
    private
  
      def image_params
        params.require(:image).permit(:tagline, :picture, :album_id)
      end

end
