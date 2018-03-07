require 'rails_helper'

include ControllerMacros

RSpec.describe Admin::AgentsController, type: :controller do

	# note there is no login here

    describe "as public" do

	  describe "GET index" do
	  	before(:each) do
    	  @agent = FactoryBot.create(:agent)
    	  get :index
  		end

	    it "assigns @agents to nil" do	      
	      expect(assigns(:agents)).to eq(nil)
	    end

	    it "redirects to login page" do
	      expect(response).to redirect_to(new_admin_session_url)
	    end
	  end
	end
end
