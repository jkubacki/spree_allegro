require "spec_helper"

describe Spree::Allegro::ProductsController do
  describe "routing" do

    it "routes to #index" do
      get("/spree/allegros").should route_to("spree/allegros#index")
    end

    it "routes to #new" do
      get("/spree/allegros/new").should route_to("spree/allegros#new")
    end

    it "routes to #show" do
      get("/spree/allegros/1").should route_to("spree/allegros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spree/allegros/1/edit").should route_to("spree/allegros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spree/allegros").should route_to("spree/allegros#create")
    end

    it "routes to #update" do
      put("/spree/allegros/1").should route_to("spree/allegros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spree/allegros/1").should route_to("spree/allegros#destroy", :id => "1")
    end

  end
end
