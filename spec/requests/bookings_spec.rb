require 'rails_helper'

RSpec.describe "/bookings", type: :request do
  describe "get all activities at /bookings" do
      it "returns all bookings" do
        get "/bookings"
        print response
        expect(response).to have_http_status(200)
      end
    end

end