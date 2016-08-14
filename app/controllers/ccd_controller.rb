class CcdController < ApplicationController
  require 'open-uri'
  require 'json'


  ###########################################
  ## this action returns the full CCD as JSON
  ###########################################
  def show_full_ccd

    if Rails.env.development?

      puts 'development'

      url = "https://services.development.carecloud.com/ccd/0029-1418297147"

      health_record =  open(url).read

      response = JSON.parse(health_record)

      @api_response = response

      render json: @api_response
    elsif Rails.env.production?  # Production
      puts "not development"
      file = File.open("ccd.json", "r")
      @api_response = file.read
      render json: @api_response
    end
  end

  ###########################################
  ## this action returns just the user's meds
  ###########################################
  def show_meds

    if Rails.env.development?

      url = "https://services.development.carecloud.com/ccd/0029-1418297147"

      health_record =  open(url).read


      meds_array = JSON.parse(health_record)["visit_medications"]["medication_list"]


      response_array = []

      meds_array.each do |med|
        response_array.push med["drug_name"]
      end

      @api_response = response_array.to_json
      render json: @api_response
    elsif Rails.env.production?
      puts "not development"
      file = File.open("meds.json", "r")
      @api_response = file.read
      render json: @api_response
    end
  end

  def home
    @welcome = "Welcome to WynCare!!!"
  end
end
