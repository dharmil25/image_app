class StaticPagesController < ApplicationController
  def home
      @feed_items = Image.paginate(page: params[:page], :per_page => 25)
  end

end
