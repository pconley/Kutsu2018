require_relative 'public_helper.rb'

RSpec.describe "Donate Page" do

	before :each do
		$DonatePage.goto
	end
  
  	include_examples "public page specs", $DonatePage
  	      
	it "has expected sections" do
		expect($DonatePage).to have_content("To Contribute")
		expect($DonatePage).to have_content("Monetary Donation")
		expect($DonatePage).to have_content("In-Kind Donation")
		expect($DonatePage).to have_content("Mail Address")
		expect($DonatePage).to have_content("Tax Deductible")
	end
  
end