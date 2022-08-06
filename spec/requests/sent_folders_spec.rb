require 'rails_helper'
RSpec.describe "/sentmessages", type: :request do
  describe "get all activities at /channelmessages" do
      it "returns all sentmessages" do
        get "/sentmessages"
        print response
        expect(response).to have_http_status(200)
      end
    end

end
