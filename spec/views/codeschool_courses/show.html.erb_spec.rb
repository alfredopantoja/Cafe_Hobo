require 'spec_helper'

describe "codeschool_courses/show" do
  before(:each) do
    @codeschool_course = assign(:codeschool_course, stub_model(CodeschoolCourse,
      :name => "Name",
      :description => "MyText",
      :image_url => "Image Url",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Image Url/)
    rendered.should match(/1/)
  end
end
