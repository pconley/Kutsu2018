require_relative 'public_helper.rb'

RSpec.describe "Volunteer Page" do

	before :each do
		$VolunteerPage.goto
	end
  
  	include_examples "basic page specs", $VolunteerPage
  	include_examples "public topline specs", $HomePage
  	include_examples "public header specs", $VolunteerPage
  	include_examples "public navbar specs", $VolunteerPage
      
	it "is under construction" do
		expect($VolunteerPage).to have_content("Under Construction")
	end

	# it "has expected number of quotes" do
	# 	# showing a fixed number of quotes on the page
	# 	expect($VolunteerPage.quotes.length).to eq(12)
	# end

end