class FbmController < ApplicationController
  # def get_stuff
  #   respond_to do | format |
  #     format.json{ render json: '[{"text": "Hellooo, Nurse!"}]', status: :ok }
  #   end
  # end

  def give_ccd
    file = File.open("ccd.json", "r")
    @api_response = file.read
    respond_to do |format|
      format.xml{ render xml: @api_response, status: :ok }
    end
  end

  def get_meds
    format.json{ render json: '[{"text": "Hellooo, Nurse!"}]', status: :ok }
  end
  end
end
