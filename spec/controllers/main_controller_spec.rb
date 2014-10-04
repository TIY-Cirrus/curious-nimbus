require 'rails_helper'

RSpec.describe MainController, :type => :controller do

  describe "GET tutorial" do
    it "returns http success" do
      get :tutorial
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET friends" do
    it "returns http success" do
      get :friends
      expect(response).to have_http_status(:success)
    end
  end

end
