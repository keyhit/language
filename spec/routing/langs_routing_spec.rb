require "rails_helper"

RSpec.describe LangsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/langs").to route_to("langs#index")
    end

    it "routes to #new" do
      expect(:get => "/langs/new").to route_to("langs#new")
    end

    it "routes to #show" do
      expect(:get => "/langs/1").to route_to("langs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/langs/1/edit").to route_to("langs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/langs").to route_to("langs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/langs/1").to route_to("langs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/langs/1").to route_to("langs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/langs/1").to route_to("langs#destroy", :id => "1")
    end

  end
end
