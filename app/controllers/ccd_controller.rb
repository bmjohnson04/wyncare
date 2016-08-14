class CcdController < ApplicationController
  def show
    require 'open-uri'

    #  url = "http://services.development.carecloud.local/ccd/2460-9271986201"  # original from Grady
    #  url = "http://services.development.carecloud.local/ccd/0029-1418297147"  # pattis patient

     url = 'http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt'

    @contents =  open(url).read

    render json: @contents
  end

  def home
    @welcome = "Welcome to WynCare!!!"
  end
end