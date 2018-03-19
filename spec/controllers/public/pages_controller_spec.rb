require 'rails_helper'

# include ControllerMacros

pages = %w(home about history programs requests donate contact faqs)

errors = %w(other xxx zzz)

RSpec.describe Public::PagesController, type: :controller do

	describe "GET" do
		pages.each do |page|
		    it "with action #{page} raises an error" do
		      # PAGE AS ACTION IS DEPRICATED
		      expect { get page }.to raise_error(ActionController::UrlGenerationError)
		      # expect(response).to render_template(page)
		    end
		end
	end

	describe "GET" do
		errors.each do |page|
		    it "with #{page} raises an error" do
		      expect { get page }.to raise_error(ActionController::UrlGenerationError)
		    end
		end
	end

	describe "GET show" do
		pages.each do |page|
			it "with id #{page} renders page" do
		      get :show, params: { id: page }
		      expected_template = ["public/pages/#{page}", "layouts/application"]
		      expect(response).to render_template("public/pages/#{page}")
			end
		end
	end

end