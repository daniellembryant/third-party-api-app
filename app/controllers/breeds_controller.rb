class BreedsController < ApplicationController

  def index 
    user_search = params[:search]
    response = HTTP.auth("Rails.application.credentials.cat_api").get("https://api.thecatapi.com/v1/breeds/search?q=#{user_search}")
    breeds = response.parse(:json)
    render json: breeds
  end
end
