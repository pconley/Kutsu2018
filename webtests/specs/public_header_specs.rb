RSpec.shared_examples "public header specs" do |parameter|

  let(:page) { parameter }

  it "has expected public header links" do
	expect(page.donate_now_link).to exist
  end

  it "has expected public header contents" do
	expect(page).to be_here("N.O.S.E")
  end
  
end