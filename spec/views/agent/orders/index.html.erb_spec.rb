require 'rails_helper'

RSpec.describe "agent/orders/index", type: :view do
  before(:each) do
    assign(:orders, [ FactoryBot.create(:order), FactoryBot.create(:order) ])
  end

  it "renders a list of agent/orders" do
    render
    assert_select "tr>td", :text => "new".to_s, :count => 2 # the STATUS
    assert_select "tr>td", :text => "Left Size".to_s, :count => 2
    assert_select "tr>td", :text => "Left Width".to_s, :count => 2
    assert_select "tr>td", :text => "Right Size".to_s, :count => 2
    assert_select "tr>td", :text => "Right Width".to_s, :count => 2
    assert_select "tr>td", :text => "Style".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
