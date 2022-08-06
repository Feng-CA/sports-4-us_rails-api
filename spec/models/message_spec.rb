require 'rails_helper'
RSpec.describe "/messages", type: :request do


  describe "get all messages at /messages" do
    it "returns all messages " do
      get "/messages"
      expect(response).to have_http_status(:success)
    end

  end

end
