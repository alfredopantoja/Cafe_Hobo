require 'spec_helper'

describe "portfolio_sites/edit" do
  before(:each) do
    @portfolio_site = assign(:portfolio_site, stub_model(PortfolioSite,
      :name => "MyString",
      :description => "MyText",
      :screenshot_url => "MyString",
      :site_url => "MyString",
      :order => 1
    ))
  end

  it "renders the edit portfolio_site form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => portfolio_sites_path(@portfolio_site), :method => "post" do
      assert_select "input#portfolio_site_name", :name => "portfolio_site[name]"
      assert_select "textarea#portfolio_site_description", :name => "portfolio_site[description]"
      assert_select "input#portfolio_site_screenshot_url", :name => "portfolio_site[screenshot_url]"
      assert_select "input#portfolio_site_site_url", :name => "portfolio_site[site_url]"
      assert_select "input#portfolio_site_order", :name => "portfolio_site[order]"
    end
  end
end
