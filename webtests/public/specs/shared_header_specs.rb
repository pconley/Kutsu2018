RSpec.shared_examples "public header specs" do |parameter|

  let(:page) { parameter }

  it "has expected public header contents", if: $depth >= FULLTEST do
	  expect(page).to be_here("N.O.S.E")
  end
 
  it "has expected public header links", if: $depth >= FULLTEST do
	  expect(page.donate_now_link).to exist
  end

  it "donate now link goes to donate page", if: $depth >= FULLTEST do
  	page.donate_now_link.click
  	expect($DonatePage).to be_present
  end

end