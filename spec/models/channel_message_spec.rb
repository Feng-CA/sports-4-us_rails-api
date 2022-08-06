require 'rails_helper'
RSpec.describe "/channelmessages", type: :request do


  describe "get all messages at /channelmessages" do
    it "returns all channelmessages " do
      get "/channelmessages"
      expect(response).to have_http_status(:success)
    end

  end

end