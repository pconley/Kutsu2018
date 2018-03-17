require 'rails_helper'

# include ControllerMacros

RSpec.describe "Orders", type: :request do

  # login_agent # creates a before each

  describe "GET /agent/orders" do
    it "works! (now write some real specs)" do
      get agent_orders_path
      # will redirect becasue agent not logged in!
      expect(response).to have_http_status(302)
    end
  end
end
