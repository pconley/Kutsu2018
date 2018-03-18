require 'rails_helper'

RSpec.describe "agent/orders/new", type: :view do
  before(:each) do
    @order = assign(:order, FactoryBot.create(:order))
  end

  it "renders new agent order form" do
    render

    assert_select "form[action=?][method=?]", agent_order_path(@order), "post" do

      # assert_select "input[name=?]", "agent_order[agent_id]"
      # assert_select "input[name=?]", "agent_order[status]"
      # assert_select "input[name=?]", "agent_order[notes]"

      assert_select "select[name=?]", "order[left_size]"
      assert_select "select[name=?]", "order[left_width]"
      assert_select "select[name=?]", "order[right_size]"
      assert_select "select[name=?]", "order[right_width]"
      assert_select "input[name=?]", "order[style]"
      assert_select "textarea[name=?]", "order[description]"
    end
  end
end
