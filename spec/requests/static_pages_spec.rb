require 'spec_helper'


describe "StaticPages" do
   let(:base_title) { "Ruby on Rails Tutorial Sample App"}

  describe "Home page" do
  	it "Should have the h1 'Sample App' " do
  		visit '/static_pages/home'
  		page.should have_selector('h1', :text=> 'Sample App')
    end
    it "Should have the title Home" do
      visit '/static_pages/home'
  		page.should have_selector('title',
  			:text => "#{base_title} | Home")
  	end
  end

  describe "Help page" do
  	it "Should have the h1 title 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text =>'Help')
  		page.should have_selector('title',
  							:text=> "Ruby on Rails Tutorial Sample App | Help")
  	end
end
	describe "About page" do 
		it "SHould have the h1 'About Us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Us')
			page.should have_selector('title',
							:text =>"Ruby on Rails Tutorial Sample App | About")
	end
end
  describe "contact page" do 
    it "Should have the title h1 'Contact'" do 
      visit '/static_pages/contact'
      page.should have_selector('h1',:text => 'Contact')
      page.should have_selector('title',
              :text =>"Ruby on Rails Tutorial Sample App | Contact")
    end
end
end