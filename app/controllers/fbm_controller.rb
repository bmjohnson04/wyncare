class FbmController < ApplicationController
  def get_stuff
   respond_to do |format|
    format.json{ render(json: [{"text": "Hellooo, Nurse!"}], status: :ok) }
   end
  end
end
