require 'rails_helper'

RSpec.describe "/activities", type: :request do
  describe "get all activities at /activities" do
      it "returns all activities" do
        get "/activities"
        print response
        expect(response).to have_http_status(200)
      end
    end

end
