class BreedsController < ApplicationController

  def index 
    user_search = params[:search]
    response = HTTP.auth("<API KEY>").get("https://api.thecatapi.com/v1/breeds/search?q=#{user_search}")
    breeds = response.parse(:json)
    render json: breeds
  end
end
