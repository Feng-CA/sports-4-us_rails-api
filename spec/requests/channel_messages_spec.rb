require 'rails_helper'
RSpec.describe "/channelmessages", type: :request do
  describe "get all activities at /channelmessages" do
      it "returns all channelmessages" do
        get "/channelmessages"
        print response
        expect(response).to have_http_status(200)
      end
    end

end
