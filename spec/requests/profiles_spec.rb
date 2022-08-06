require 'rails_helper'
RSpec.describe "/profiles", type: :request do
  describe "get all profiles at /profiles" do
      it "returns all profiles" do
        get "/profiles"
        print response
        expect(response).to have_http_status(200)
      end
    end

end
