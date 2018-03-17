require 'rails_helper'

include ControllerMacros

RSpec.describe Agent::OrdersController, type: :controller do

	# note there is no login here

    describe "as public" do

	  describe "GET index" do
	  	before(:each) do
	  	  agent = FactoryBot.create(:agent)
    	  FactoryBot.create(:order, agent: agent) # orders exist
    	  get :index
  		end

	    it "assigns @orders to nil" do	      
	      expect(assigns(:orders)).to eq(nil)
	    end

	    it "redirects to login page" do
	      expect(response).to redirect_to(new_agent_session_url)
	    end
	  end
	end
end
