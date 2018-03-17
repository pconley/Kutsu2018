require 'rails_helper'

RSpec.describe "agent/orders/show", type: :view do
  before(:each) do
    @order = assign(:order, FactoryBot.create(:order))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Left Size/)
    expect(rendered).to match(/Left Width/)
    expect(rendered).to match(/Right Size/)
    expect(rendered).to match(/Right Width/)
    expect(rendered).to match(/Style/)
    expect(rendered).to match(/Description/)
  end
end
