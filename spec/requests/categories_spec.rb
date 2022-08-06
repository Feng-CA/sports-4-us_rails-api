require 'rails_helper'
RSpec.describe "/categories", type: :request do
  describe "get all activities at /categories" do
      it "returns all categories" do
        get "/categories"
        print response
        expect(response).to have_http_status(200)
      end
    end

end
