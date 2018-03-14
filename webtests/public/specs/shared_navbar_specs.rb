RSpec.shared_examples "public navbar specs" do |parameter|

  let(:page) { parameter }

  it "has expected public navbar links" do
	expect(page.requestor_login_link).to exist
  end
  
end