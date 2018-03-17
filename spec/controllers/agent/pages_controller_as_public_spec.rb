require 'rails_helper'

include ControllerMacros

RSpec.describe Agent::PagesController, type: :controller do

	# NOTE THERE IS NO LOGIN

	# any well formed request redirects to login page
	# becasue the PUBLIC cannot access the AGENT pages

	pages = %w(xxx test home blog notes about)

	describe "as public" do
		describe "GET show" do
			pages.each do |page|
			    it "#{page} redirects to the admin login page" do
			      get :show, params: { id: page }
			      expect(response).to redirect_to(new_agent_session_url)
			    end
			end
		end
	end
end
