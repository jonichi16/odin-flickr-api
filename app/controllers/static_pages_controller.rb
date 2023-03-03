class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    @flickr = Flickr.new ENV["FLICKR_API_KEY"], ENV["FLICKR_SHARED_SECRET"]
    if params[:user_id]
      @photos = @flickr.people.getPublicPhotos(user_id: params[:user_id])
    end
  end
end
