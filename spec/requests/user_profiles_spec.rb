require 'rails_helper'

RSpec.describe "UserProfiles", type: :request do
  describe "GET /show" do
    xit "returns http success" do
      get "/user_profiles/show"
      expect(response).to have_http_status(:success)
    end
  end

end
