class FbmController < ApplicationController
  def get_stuff
    respond_to do | format |
      format.json{ render json: '[{"text": "Hellooo, Nurse!"}]', status: :ok }
    end
  end

  def give_ccd

    res = [{text: 'Found it! :D'},
           {attachment: {type: 'file', payload: {url: 'https://raw.githubusercontent.com/chb/sample_ccdas/master/Allscripts%20Samples/Sunrise%20Clinical%20Manager/C-CDA_101693_20130617091427_Kidd_Kari%20CCDA.xml'}}}]

    respond_to do | format |
      format.json{ render json: res, status: :ok }
    end
  end

  def patient_export
    file = File.open("app/views/ccd.xml", "r")
    @api_response = file.read
    respond_to do | format |
      format.xml{ render xml: @api_response, status: :ok }
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
