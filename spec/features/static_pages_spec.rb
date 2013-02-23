require 'spec_helper'

describe "StaticPages" do

let(:base_title) {"Jordan's Rails App"}

  describe "Home page" do 

    it "should have the h1 'Jordan's Rails App'" do #Just for the user to be able to read it easy. Does nothing
      visit '/home' #Uses capybara function 'visit' to simulate visiting the /home URI in a browser
      page.should have_selector('h1', :text => "Jordan's Rails App")#Uses capybara 'page' variable to test that the resulting page has the right h1
    end

    it "should have the title Jordan's Rails App | Home" do
      visit '/home'
      page.should have_selector('title', :text => "#{base_title}")#Uses the 'have_selector tag'
    end
  end  
  
  describe "Help page" do 

    it "should have the h1 'Help'" do #Just for the user to be able to read it easy. Does nothing
      visit '/help' #Uses capybara function 'visit' to simulate visiting the /home URI in a browser
      page.should have_selector('h1', :text => 'Help')
    end
    it "should have the title Help" do
      visit '/help'
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end

  describe "Contact" do 

    it "should have the h1 'Contact'" do #Just for the user to be able to read it easy. Does nothing
      visit '/contact' #Uses capybara function 'visit' to simulate visiting the /home URI in a browser
      page.should have_selector('h1', :text => 'Contact')
    end
    it "should have the title Contact" do
      visit '/contact'
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end    

end
