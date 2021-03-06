require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect (page).should have_content('Sample App')
    end
    it "should have the base title" do
      visit '/static_pages/home'
      expect (page).should have_title("Ruby on Rails Tutorial Sample App")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect (page).should have_content('Help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect (page).should have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About me'" do
      visit '/static_pages/about'
      expect (page).should have_content('About me')
    end
    it "should have the title 'About'" do
      visit '/static_pages/about'
      expect (page).should have_title("Ruby on Rails Tutorial Sample App | About")
    end
  end

  describe "Contact" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect (page).should have_content('Contact')
    end
    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect (page).should have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end

end
