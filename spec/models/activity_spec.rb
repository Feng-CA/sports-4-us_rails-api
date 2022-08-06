require 'rails_helper'
RSpec.describe "/activities", type: :request do


  describe "get all messages at /activities" do
    it "returns all activities " do
      get "/activities"
      expect(response).to have_http_status(:success)
    end

  end

end