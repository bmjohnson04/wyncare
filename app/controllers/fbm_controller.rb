class FbmController < ApplicationController
  def get_stuff
    respond_to do | format |
      format.json{ render json: '[{"text": "Hellooo, Nurse!"}]', status: :ok }
    end
  end

  def give_ccd

    res = [{text: 'Found it! :D'},
           {text: "Here's a link to download your record. It expires in 1 min. Act fast!"},
           {text: patient_export_url(format 'xml')}]

    respond_to do | format |
      format.json{ render json: res, status: :ok }
    end
  end

  def patient_export
    # file = File.open("app/views/ccd.xml", "r")
    # @api_response = file.read
    respond_to do | format |
      format.xml{
        send_file 'app/views/ccd.xml', type: :xml
      }
    end
  end
  # def give_meds
  #   file = File.open("app/views/ccd.xml", "r")
  #   @api_response = file.read
  #   respond_to do | format |
  #     format.xml{ render xml: @api_response, status: :ok }
  #   end
  # end
end
