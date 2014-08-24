require "rails_helper"

RSpec.describe WigglesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/wiggles").to route_to("wiggles#index")
    end

    it "routes to #new" do
      expect(:get => "/wiggles/new").to route_to("wiggles#new")
    end

    it "routes to #show" do
      expect(:get => "/wiggles/1").to route_to("wiggles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/wiggles/1/edit").to route_to("wiggles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/wiggles").to route_to("wiggles#create")
    end

    it "routes to #update" do
      expect(:put => "/wiggles/1").to route_to("wiggles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/wiggles/1").to route_to("wiggles#destroy", :id => "1")
    end

  end
end
