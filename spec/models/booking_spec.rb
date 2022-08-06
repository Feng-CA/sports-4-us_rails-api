require 'rails_helper'
RSpec.describe "/bookings", type: :request do


  describe "get all messages at /bookings" do
    it "returns all bookings " do
      get "/bookings"
      expect(response).to have_http_status(:success)
    end

  end

end