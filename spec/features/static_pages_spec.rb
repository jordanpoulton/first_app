require 'spec_helper'


describe "StaticPages" do

  describe "Home page" do 

    it "should have the content 'Sample App'" do #Just for the user to be able to read it easy. Does nothing
      visit '/static_pages/home' #Uses capybara function 'visit' to simulate visiting the /static_pages/home URI in a browser
      page.should have_content('Sample App') #Uses capybara 'page' variable to test that the resulting page has the right content
    end
  end  
  describe "Help page" do 

    it "should have the content 'Help'" do #Just for the user to be able to read it easy. Does nothing
      visit '/static_pages/help' #Uses capybara function 'visit' to simulate visiting the /static_pages/home URI in a browser
      page.should have_content('Help') #Uses capybara 'page' variable to test that the resulting page has the right content
    end
  end
  describe "About" do 

    it "should have the content 'About'" do #Just for the user to be able to read it easy. Does nothing
      visit '/static_pages/about' #Uses capybara function 'visit' to simulate visiting the /static_pages/home URI in a browser
      page.should have_content('About') #Uses capybara 'page' variable to test that the resulting page has the right content
    end
  end    
end
