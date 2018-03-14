require_relative 'public_helper.rb'

RSpec.describe "Volunteer Page" do

	before :each do
		$VolunteerPage.goto
	end
  
  	include_examples "public page specs", $VolunteerPage
      
	it "is under construction" do
		expect($VolunteerPage).to have_content("Under Construction")
	end

end