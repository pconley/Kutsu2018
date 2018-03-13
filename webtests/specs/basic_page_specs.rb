RSpec.shared_examples "basic page specs" do |parameter|

	let(:page) { parameter }

	it "is present" do
		expect(page).to be_present
		# expect(page).to be_here("N.O.S.E")
	end

	it "has expected title" do
		expect(page.title).to eq("Kutsu2018")
	end

end