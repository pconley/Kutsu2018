require 'shared_topline_specs.rb'
require 'shared_header_specs.rb'
require 'shared_navbar_specs.rb'

RSpec.shared_examples "public page specs" do |parameter|

	let(:page) { parameter }

	it "is present" do
		expect(page).to be_present
	end

	it "has expected title", if: $depth >= FULLTEST  do
		expect(page.title).to eq("Kutsu2018")
	end

	include_examples "public topline specs", parameter if $depth >= FULLTEST
  	include_examples "public header specs", parameter  if $depth >= FULLTEST
  	include_examples "public navbar specs", parameter  if $depth >= FULLTEST

end