require 'rails_helper'

include ControllerMacros

RSpec.describe Admin::PagesController, type: :controller do

	login_admin # before each

	describe "as admin" do
		describe "GET show" do
		    it "<unknown> renders the error template" do
		      get :show, params: { id: 'xxx' }
		      expect(response).to render_template("error")
		    end
		    it "test renders the test template" do
		      get :show, params: { id: 'test' }
		      expect(response).to render_template("test")
		    end
		    it "blog renders the error template" do
		      get :show, params: { id: 'blog' }
		      expect(response).to render_template("blog")
		    end
		    it "home renders the home template" do
		      get :show, params: { id: 'home' }
		      expect(response).to render_template("home")
		    end
		    it "notes renders the notes template" do
		      get :show, params: { id: 'notes' }
		      expect(response).to render_template("notes")
		      expect(assigns(:notes).length).to be > 3
		    end
		end
	end
end
