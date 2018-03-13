require_relative 'spec_helper.rb'

RSpec.describe "Home Page" do

	before :each do
		$HomePage.goto
	end
  
  	after :each do
    	# NOTE: we cannot log out after each test!!!!
  	end

  	include_examples "basic page specs", $HomePage
  	include_examples "public topline specs", $HomePage
  	include_examples "public header specs", $HomePage
  	include_examples "public navbar specs", $HomePage
      
	it "has expected content" do
		expect($HomePage).to have_content("Our next event")
		expect($HomePage).to have_content("Featured campaigns")
		expect($HomePage).to have_content("Clean water for africa")
	end

end