class FbmController < ApplicationController
  def fbm_msg

    respond_to do |format|
        format.json{ render json: [{"text": "Hellooo, Nurse!"}] }
      end
  end
  #   require 'open-uri'
  #   require 'json'
  #
  #   if Rails.env.development?
  #
  #     url = "http://linktochatfuel.com"
  #
  #     chat_response =  open(url).read
  #
  #
  #     chat_response = JSON.parse(chat)["text"]
  #
  #
  #     response_array = []
  #
  #     chat_response.each do |msg|
  #       response_array.push chat["text"]
  #     end
  #
  #     @api_response = response_array.to_json
  #     render json: @api_response
  #
  #   end
  # end
end
