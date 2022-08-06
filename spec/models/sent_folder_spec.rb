RSpec.describe "/sentmessages", type: :request do


  describe "get all messages at /sentmessages" do
    it "returns all sentmessages " do
      get "/sentmessages"
      expect(response).to have_http_status(:success)
    end

  end

end
