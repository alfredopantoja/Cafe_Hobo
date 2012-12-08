require 'spec_helper'

describe "portfolio_sites/index" do
  before(:each) do
    assign(:portfolio_sites, [
      stub_model(PortfolioSite,
        :name => "Name",
        :description => "MyText",
        :screenshot_url => "Screenshot Url",
        :site_url => "Site Url",
        :order => 1
      ),
      stub_model(PortfolioSite,
        :name => "Name",
        :description => "MyText",
        :screenshot_url => "Screenshot Url",
        :site_url => "Site Url",
        :order => 1
      )
    ])
  end

  it "renders a list of portfolio_sites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Screenshot Url".to_s, :count => 2
    assert_select "tr>td", :text => "Site Url".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
