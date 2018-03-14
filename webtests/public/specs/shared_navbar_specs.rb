RSpec.shared_examples "public navbar specs" do |parameter|

  let(:page) { parameter }

  it "has expected public navbar links", if: $depth >= FULLTEST do
	expect(page.requestor_login_link).to exist
  end
  
end