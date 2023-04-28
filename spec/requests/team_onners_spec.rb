require 'rails_helper'

RSpec.describe "TeamOnners", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/team_onners/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/team_onners/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/team_onners/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/team_onners/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/team_onners/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
