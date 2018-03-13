require_relative 'spec_helper.rb'

RSpec.describe "Contact Page" do

	before :each do
		$ContactPage.goto
	end
  
  	include_examples "basic page specs", $ContactPage
  	include_examples "public topline specs", $HomePage
  	include_examples "public header specs", $ContactPage
  	include_examples "public navbar specs", $ContactPage
      
	it "has expected sections" do
		expect($ContactPage).to have_content("Requests")
		expect($ContactPage).to have_content("By US Mail")
		expect($ContactPage).to have_content("By Phone")
		expect($ContactPage).to have_content("By Email")
	end
  
end