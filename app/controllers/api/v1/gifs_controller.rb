class Api::V1::GifsController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def index
    # image_urls = []
    # base_url = "http://api.giphy.com/v1/gifs/search?api_key=#{ENV["GIPHY_KEY"]}"
    # query = "steven-universe"
    # response = Faraday.get("#{base_url}&q=#{query}")
    #
    # parsed_response = JSON.parse(response.body)
    # image_urls = []
    # parsed_response["data"].each do |gif|
    #   image_urls<< gif["images"]["preview_gif"]["url"]
    # end

    gif_wrapper = GifsWrapper.retrieve_gifs("elmo")
    render json: gif_wrapper.gif_urls
  end
end
