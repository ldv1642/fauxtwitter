require 'spec_helper'

describe "Static pages" do

	let(:title) {"Faux Twitter |"}

	describe "Home page" do
		it "should have a h1 containing 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('h1',
				:text => "Home")
		end
		it "should have the right title" do
			visit '/static_pages/home'
			page.should have_selector('title', 
				:text => "#{title} Home")
		end
	end

	describe "Help page" do
		it "should have a h1 containing 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1',
				:text => "Help")
		end
		it "should the right title" do
			visit '/static_pages/help'
			page.should have_selector('title',
				:text => "#{title} Help")
		end
	end

	describe "About page"  do
		it "should have a h1 containing 'about'" do
			visit '/static_pages/about'
			page.should have_selector('h1',
				:text => "About")
		end
		it "should have the right title" do
			visit '/static_pages/about'
			page.should have_selector('title',
				:text => "#{title} About")
		end
	end

	describe "Contact page" do
		it "should have the right title" do
			visit '/static_pages/contact'
			page.should have_selector('title',
				:text => "Faux Twitter | Contact")
		end
		it "should have a h1 containing 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('h1',
				:text => "Contact")
		end
	end

end