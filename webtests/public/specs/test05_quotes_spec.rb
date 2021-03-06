require_relative 'public_helper.rb'

RSpec.describe "Quotes Page" do

	before :each do
		$QuotesPage.goto
	end
  
  	include_examples "public page specs", $QuotesPage
  	
	it "has expected sections" do
		expect($QuotesPage).to have_content("what our recipeints say")
	end

	it "has expected number of quotes" do
		# showing a fixed number of quotes on the page
		expect($QuotesPage.quotes.length).to eq(12)
	end

end