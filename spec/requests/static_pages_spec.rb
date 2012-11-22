require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Cafe Hobo'" do
      visit '/static_pages/home'
      page.should have_content('Cafe Hobo')
    end

    it "should have the title 'Home'" do 
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Cafe Hobo | Home")
    end
  end
end