require 'rails_helper'
RSpec.describe "/profiles", type: :request do


  describe "get all messages at /profiles" do
    it "returns all profiles " do
      get "/profiles"
      expect(response).to have_http_status(:success)
    end

  end

end
