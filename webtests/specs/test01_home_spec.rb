require_relative 'spec_helper.rb'

RSpec.describe "Home Page" do

	before :each do
		$HomePage.goto
	end
  
  	after :each do
    	# NOTE: we cannot log out after each test!!!!
  	end
    
	it "is present" do
		expect($HomePage).to be_present
		expect($HomePage).to be_here("N.O.S.E")
    	# cannot log out... never got in
	end
  
	it "has expected title" do
		expect($HomePage.title).to eq("Kutsu2018")
    	# cannot log out... never got in
	end
  
	it "has expected content" do
		expect($HomePage).to have_content("Our next event")
		#expect($HomePage).to have_content("Featured campaigns")
		expect($HomePage).to have_content("Clean water for africa")
    	# cannot log out... never got in
	end
  
	it "has expected links" do
		expect($HomePage.donate_now_link).to exist
		expect($HomePage.admin_login_link).to exist
		# expect($HomePage.requestor_login_link).to exist
    	# cannot log out... never got in
	end
  
	# it "can login with valid credentials" do
	# 	$HomePage.fill_and_submit($good_user, $good_pass)
	# 	expect($TravelFlightPage).to be_present
	# 	$HomePage.logout
	# 	expect($HomePage).to be_present
	# end
  
	# it "fails to login with invalid password" do
	# 	$HomePage.fill_and_submit($good_user, "abc123")
	# 	expect($HomePage).to have_content("Invalid email or password")
 #    	# cannot log out... never got in
	# end
  
	# it "fails to login with invalid credentials" do
	# 	$HomePage.fill_and_submit("xuser", "xpassword")
	# 	expect($HomePage).to have_content("Invalid email or password")
 #    # cannot log out... never got in
	# end
  
end