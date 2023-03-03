class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    @flickr = Flickr.new
    if params[:user_id]
      @photos = @flickr.people.getPublicPhotos(user_id: params[:user_id])
    end
  end
end
