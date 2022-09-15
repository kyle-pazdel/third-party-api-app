class DogsController < ApplicationController
  def index
    request = HTTP.get("https://api.TheDogAPI.com/v1/breeds?api_key=#{Rails.application.credentials.dog_api_key}")

    render json: request.parse(:json)
  end

  def show
    dog = params[:breed]
    request = HTTP.get("https://api.TheDogAPI.com/v1/breeds/search?q=#{dog}&api_key=#{Rails.application.credentials.dog_api_key}")

    render json: request.parse(:json)
  end
end
