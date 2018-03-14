require_relative 'public_helper.rb'

RSpec.describe "About Page" do

	before :each do
		$AboutPage.goto
	end
  
  	include_examples "basic page specs", $AboutPage
  	include_examples "public topline specs", $HomePage
  	include_examples "public header specs", $AboutPage
  	include_examples "public navbar specs", $AboutPage
      
	it "has expected content" do
		expect($AboutPage).to have_content("Our Purpose")
	end
  
end