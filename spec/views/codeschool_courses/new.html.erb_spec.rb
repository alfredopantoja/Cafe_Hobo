require 'spec_helper'

describe "codeschool_courses/new" do
  before(:each) do
    assign(:codeschool_course, stub_model(CodeschoolCourse,
      :name => "MyString",
      :description => "MyText",
      :image_url => "MyString",
      :order => 1
    ).as_new_record)
  end

  it "renders new codeschool_course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => codeschool_courses_path, :method => "post" do
      assert_select "input#codeschool_course_name", :name => "codeschool_course[name]"
      assert_select "textarea#codeschool_course_description", :name => "codeschool_course[description]"
      assert_select "input#codeschool_course_image_url", :name => "codeschool_course[image_url]"
      assert_select "input#codeschool_course_order", :name => "codeschool_course[order]"
    end
  end
end
