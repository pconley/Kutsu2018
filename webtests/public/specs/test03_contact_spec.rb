require_relative 'public_helper.rb'

RSpec.describe "Contact Page" do

	before :each do
		$ContactPage.goto
	end
  
  	include_examples "public page specs", $ContactPage
  	
	it "has expected sections" do
		expect($ContactPage).to have_content("Requests")
		expect($ContactPage).to have_content("By US Mail")
		expect($ContactPage).to have_content("By Phone")
		expect($ContactPage).to have_content("By Email")
	end
  
end