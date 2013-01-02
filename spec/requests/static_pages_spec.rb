include ApplicationHelper
require 'spec_helper'

describe "Static pages" do

	let(:title) {"Faux Twitter |"}
	subject { page }

	shared_examples_for "all static pages" do
		it {should have_selector('h1', text: heading)}
		it {should have_selector('title', :text => full_title(page_title))}
	end

	describe "Home page" do
		before { visit root_path }

		let(:heading) { 'Welcome to Faux Twitter' }
		let(:page_title) { '' }

		it {should_not have_selector('title', text: "| Home")}
	end

	describe "Help page" do
		before { visit help_path }

		let(:heading) { 'Help' }
		let(:page_title) { 'Help' }
	end

	describe "About page"  do
		before { visit about_path }

		let(:heading) { 'About' }
		let(:page_title) { 'About' }
	end

	describe "Contact page" do
		before { visit contact_path }

		let(:heading) { 'Contact' }
		let(:page_title) { 'Contact' }
	end

	it "should have the right links on the layout" do
		visit root_path
		click_link "About"
		page.should have_selector 'title', text: full_title('About')
		click_link "Help"
		page.should have_selector 'title', text: full_title('Help')
		click_link "Home"
		page.should have_selector 'title', text: full_title('')
		click_link "Faux Twitter"
		page.should have_selector 'title', text: full_title('')
		click_link "Contact" 
		page.should have_selector 'title', text: full_title('Contact')
		click_link "Home"
		click_link "Sign up now!"
		page.should have_selector 'title', text: full_title('Sign up')
		

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
