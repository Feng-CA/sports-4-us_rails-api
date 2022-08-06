require 'rails_helper'
RSpec.describe "/messages", type: :request do
  describe "get all activities at /messages" do
      it "returns all messages" do
        get "/messages"
        print response
        expect(response).to have_http_status(200)
      end
    end

end
