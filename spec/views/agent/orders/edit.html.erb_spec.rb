require 'rails_helper'

RSpec.describe "agent/orders/edit", type: :view do
  before(:each) do
    @order = assign(:order, FactoryBot.create(:order))
    # @order = assign(:order, Agent::Order.create!(
    #   :agent => nil,
    #   :status => "MyString",
    #   :notes => "MyString",
    #   :left_size => "MyString",
    #   :left_width => "MyString",
    #   :right_size => "MyString",
    #   :left_width => "MyString",
    #   :style => "MyString",
    #   :description => "MyString"
    # ))
  end

  it "renders the edit order form" do
    render

    assert_select "form[action=?][method=?]", agent_order_path(@order), "post" do

      # assert_select "input[name=?]", "order[status]"

      assert_select "input[name=?]", "order[left_size]"

      assert_select "input[name=?]", "order[left_width]"

      assert_select "input[name=?]", "order[right_size]"

      assert_select "input[name=?]", "order[right_width]"

      assert_select "input[name=?]", "order[style]"

      assert_select "input[name=?]", "order[description]"
    end
  end
end
