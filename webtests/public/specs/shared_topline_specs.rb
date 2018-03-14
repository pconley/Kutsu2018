RSpec.shared_examples "public topline specs" do |parameter|

  let(:page) { parameter }

  it "has expected public topline links", if: $depth >= FULLTEST do
	# expect(page.donate_now_link).to exist
	expect(page.admin_login_link).to exist
  end
  
end