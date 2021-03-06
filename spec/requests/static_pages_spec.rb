require 'spec_helper'

describe "StaticPages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  describe "Home page" do
  	#contents inside " " do not matter, only for description for readers


    it "should have the h1 'Sample App'" do
    	visit '/static_pages/home'
    		#Capybara function visit simulates browser visiting /static_pages/home
    	page.should have_selector('h1', :text=>'Sample App')
    		#Capybara page variable tests whether page has right content
    end

    #title test
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', 
        :text=>"#{base_title} | Home")
    end


  end


  describe "Help page" do

  		it "should have the h1 'Help'" do

  			visit '/static_pages/help'
  			page.should have_selector('h1', :text=>'Help')
  		end

      #title test
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', 
        :text=>"#{base_title} | Help")
    end

  end

  describe "About page" do

    it "should have the h1 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text=>'About Us')
        
    end

    #title test
    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', 
        :text=>"#{base_title} | About Us")
    end

  end

  describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text=>'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text=>"#{base_title} | Contact")
    end

  end

  
end
