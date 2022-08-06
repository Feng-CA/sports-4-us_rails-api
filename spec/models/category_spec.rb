require 'rails_helper'
RSpec.describe "/categories", type: :request do


  describe "get all messages at /categories" do
    it "returns all categories " do
      get "/categories"
      expect(response).to have_http_status(:success)
    end

  end

end
