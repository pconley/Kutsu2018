require_relative 'public_helper.rb'

RSpec.describe "About Page" do

	before :each do
		$AboutPage.goto
	end
  
  	include_examples "public page specs", $AboutPage
  	      
	it "has expected content" do
		expect($AboutPage).to have_content("Our Purpose")
	end
  
end