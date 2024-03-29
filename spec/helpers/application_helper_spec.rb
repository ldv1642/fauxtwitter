require 'spec_helper'
#test the full_title function in ApplicationHelper module
describe ApplicationHelper do
	describe "full_title" do
		it "should include the page title" do
			full_title("foo").should =~ /foo/
		end

		it "should include the base title" do
			full_title("foo").should =~ /^Faux Twitter/
		end

		it "should not include a bar for home page" do
			full_title("").should_not =~ /\|/
		end
	end
end