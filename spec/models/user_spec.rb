require 'rails_helper'
RSpec.describe "/users", type: :request do


  describe "get all messages at /users" do
    it "returns all users " do
      get "/users"
      expect(response).to have_http_status(:success)
    end

  end

end