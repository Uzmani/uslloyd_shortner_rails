class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new(long_url: params[:long_url])

    @all_urls = Url.all
    puts '*' * 100
    p current_user
    if current_user
      current_user.urls << @url
      @user_urls = current_user.urls
    end
  end
end