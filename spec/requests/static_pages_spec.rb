require 'spec_helper'

describe "Static pages" do

	let(:title) {"Faux Twitter |"}

	describe "Home page" do
		it "should have a h1 containing 'Home'" do
			visit root_path
			page.should have_selector('h1',
				:text => "Welcome to Faux Twitter")
		end
		it "should have the right title" do
			visit root_path
			page.should have_selector('title', 
				:text => "Faux Twitter")
		end
		it "should not have page title in title" do
			visit root_path
			page.should_not have_selector('title',
				:text => "| Home")
		end
	end

	describe "Help page" do
		it "should have a h1 containing 'Help'" do
			visit help_path
			page.should have_selector('h1',
				:text => "Help")
		end
		it "should the right title" do
			visit help_path
			page.should have_selector('title',
				:text => "#{title} Help")
		end
	end

	describe "About page"  do
		it "should have a h1 containing 'about'" do
			visit about_path
			page.should have_selector('h1',
				:text => "About")
		end
		it "should have the right title" do
			visit about_path
			page.should have_selector('title',
				:text => "#{title} About")
		end
	end

	describe "Contact page" do
		it "should have the right title" do
			visit contact_path
			page.should have_selector('title',
				:text => "Faux Twitter | Contact")
		end
		it "should have a h1 containing 'Contact'" do
			visit contact_path
			page.should have_selector('h1',
				:text => "Contact")
		end
	end

end

describe 'Misc pages' do
	describe 'Cheatsheet page' do
		it "should have a h1 containing 'CheatSheet'" do
			visit cheat_path
			page.should have_selector('h1',
				:text => "CheatSheet")
		end
	end
end
