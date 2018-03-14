require_relative 'public_helper.rb'

RSpec.describe "Home Page" do

	before :each do
		$HomePage.goto
	end
  
  	include_examples "public page specs", $HomePage
      
	it "has expected content" do
		expect($HomePage).to have_content("Our next event")
		expect($HomePage).to have_content("Featured campaigns")
		expect($HomePage).to have_content("Clean water for africa")
	end

end