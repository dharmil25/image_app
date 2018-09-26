class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @album  = current_user.albums.build
      @feed_items = current_user.feed.all
    end
  end

end
