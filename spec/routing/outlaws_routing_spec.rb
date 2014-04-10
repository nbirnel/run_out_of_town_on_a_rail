require "spec_helper"

describe OutlawsController do
  describe "routing" do

    it "routes to #index" do
      get("/outlaws").should route_to("outlaws#index")
    end

    it "routes to #new" do
      get("/outlaws/new").should route_to("outlaws#new")
    end

    it "routes to #show" do
      get("/outlaws/1").should route_to("outlaws#show", :id => "1")
    end

    it "routes to #edit" do
      get("/outlaws/1/edit").should route_to("outlaws#edit", :id => "1")
    end

    it "routes to #create" do
      post("/outlaws").should route_to("outlaws#create")
    end

    it "routes to #update" do
      put("/outlaws/1").should route_to("outlaws#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/outlaws/1").should route_to("outlaws#destroy", :id => "1")
    end

  end
end
