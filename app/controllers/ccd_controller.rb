class CcdController < ApplicationController
  def show
    require 'open-uri'

     url = "https://services.development.carecloud.com/ccd/2460-9271986201"  # original from Grady
    #  url = "http://services.development.carecloud.local/ccd/0029-1418297147"  # pattis patient


    @contents =  open(url).read

    render json: @contents
  end

  def home
    @welcome = "Welcome to WynCare!!!"
  end
end
