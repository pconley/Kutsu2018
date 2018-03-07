require 'rails_helper'

include ControllerMacros

RSpec.describe Admin::PagesController, type: :controller do

	login_agent # before each

	# any well formed request redirects to login page
	# becasue the AGENT cannot access the ADMIN pages

	pages = %w(xxx test home blog notes about)

	describe "as agent" do
		describe "GET show" do
			pages.each do |page|
			    it "#{page} redirects to the admin login page" do
			      get :show, params: { id: page }
			      expect(response).to redirect_to(new_admin_session_url)
			    end
			end
		end
	end
end
