require "spec_helper"

describe CodeschoolCoursesController do
  describe "routing" do

    it "routes to #index" do
      get("/codeschool_courses").should route_to("codeschool_courses#index")
    end

    it "routes to #new" do
      get("/codeschool_courses/new").should route_to("codeschool_courses#new")
    end

    it "routes to #show" do
      get("/codeschool_courses/1").should route_to("codeschool_courses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/codeschool_courses/1/edit").should route_to("codeschool_courses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/codeschool_courses").should route_to("codeschool_courses#create")
    end

    it "routes to #update" do
      put("/codeschool_courses/1").should route_to("codeschool_courses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/codeschool_courses/1").should route_to("codeschool_courses#destroy", :id => "1")
    end

  end
end
