class FbmController < ApplicationController
  def get_stuff
    render(json: [{"text": "Hellooo, Nurse!"}], status: :ok)
  end
end
