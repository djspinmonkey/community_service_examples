require 'rails_helper'

RSpec.describe "Wiggles", :type => :request do
  describe "GET /wiggles" do
    it "works! (now write some real specs)" do
      get wiggles_path
      expect(response.status).to be(200)
    end
  end
end
