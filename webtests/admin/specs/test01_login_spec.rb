require_relative 'admin_helper.rb'

require 'login_page.rb'

RSpec.describe "Login Page" do

	before :each do
		$LoginPage.goto
	end
  
  	# include_examples "basic page specs", $AboutPage
  	# include_examples "public topline specs", $HomePage
  	# include_examples "public header specs", $AboutPage
  	# include_examples "public navbar specs", $AboutPage
      
	it "has expected content" do
		expect($LoginPage).to have_content("Admin Log in")
	end
  
end