require 'rails_helper'

include ControllerMacros

RSpec.describe Admin::AgentsController, type: :controller do

	login_admin # before each

	describe "as admin" do
		describe "GET index" do
			before(:each) do
		      @agent = FactoryBot.create(:agent)
		      get :index
		  	end

		    it "assigns @agents" do
		      expect(assigns(:agents)).to eq([@agent])
		    end

		    it "renders the index template" do
		      expect(response).to render_template("index")
		    end
		 
		end
	end
end
