require 'spec_helper'

describe "CodeschoolCourses" do
  describe "GET /codeschool_courses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get codeschool_courses_path
      response.status.should be(200)
    end
  end
end
