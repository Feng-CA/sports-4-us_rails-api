require 'rails_helper'
RSpec.describe "/users", type: :request do
  describe "get all activities at /users" do
      it "returns all users" do
        get "/users"
        print response
        expect(response).to have_http_status(200)
      end
    end

end
