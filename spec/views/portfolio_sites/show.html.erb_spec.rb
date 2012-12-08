require 'spec_helper'

describe "portfolio_sites/show" do
  before(:each) do
    @portfolio_site = assign(:portfolio_site, stub_model(PortfolioSite,
      :name => "Name",
      :description => "MyText",
      :screenshot_url => "Screenshot Url",
      :site_url => "Site Url",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Screenshot Url/)
    rendered.should match(/Site Url/)
    rendered.should match(/1/)
  end
end
