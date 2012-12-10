require 'spec_helper'

describe "codeschool_courses/index" do
  before(:each) do
    assign(:codeschool_courses, [
      stub_model(CodeschoolCourse,
        :name => "Name",
        :description => "MyText",
        :image_url => "Image Url",
        :order => 1
      ),
      stub_model(CodeschoolCourse,
        :name => "Name",
        :description => "MyText",
        :image_url => "Image Url",
        :order => 1
      )
    ])
  end

  it "renders a list of codeschool_courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
