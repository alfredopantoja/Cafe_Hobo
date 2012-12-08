require "spec_helper"

describe PortfolioSitesController do
  describe "routing" do

    it "routes to #index" do
      get("/portfolio_sites").should route_to("portfolio_sites#index")
    end

    it "routes to #new" do
      get("/portfolio_sites/new").should route_to("portfolio_sites#new")
    end

    it "routes to #show" do
      get("/portfolio_sites/1").should route_to("portfolio_sites#show", :id => "1")
    end

    it "routes to #edit" do
      get("/portfolio_sites/1/edit").should route_to("portfolio_sites#edit", :id => "1")
    end

    it "routes to #create" do
      post("/portfolio_sites").should route_to("portfolio_sites#create")
    end

    it "routes to #update" do
      put("/portfolio_sites/1").should route_to("portfolio_sites#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/portfolio_sites/1").should route_to("portfolio_sites#destroy", :id => "1")
    end

  end
end
