require 'spec_helper'

describe "Static pages" do

	let(:title) {"Faux Twitter |"}
	subject { page }

	describe "Home page" do
		before { visit root_path }
		
		it {should have_selector('h1', :text => "Welcome to Faux Twitter")}
		it {should have_selector('title', :text => full_title(''))}
		it {should_not have_selector('title', :text => "| Home")}
	end

	describe "Help page" do
		before { visit help_path }

		it {should have_selector('h1', :text => "Help")}
		it {should have_selector('title', :text => full_title('Help'))}
	end

	describe "About page"  do
		before { visit about_path }

		it {should have_selector('h1', :text => "About")}
		it {should have_selector('title', :text => full_title('About'))}
	end

	describe "Contact page" do
		before { visit contact_path }

		it {should have_selector('h1', :text => "Contact")}
		it {should have_selector('title', :text => full_title('Contact'))}
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
