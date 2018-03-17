require 'rails_helper'

# require 'devise'

include ControllerMacros

RSpec.describe Agent::OrdersController, type: :controller do

  # let(:valid_attributes) { {} }
  # let(:invalid_attributes) { { xxx: 'xxx' } }

  let(:valid_session) { {} }

  login_agent # creates a before each

  describe "GET index" do
    before(:each) do
      # puts ">>> before each : current agent = #{subject.current_agent}"  
      @other  = FactoryBot.create(:agent)
      @order1 = FactoryBot.create(:order, agent: subject.current_agent)
      @order2 = FactoryBot.create(:order, agent: @other)
      get :index, params: {}, session: valid_session
    end

    it "assigns @orders", :focus => true do
      # should only return my own orders
      expect(assigns(:orders)).to eq([@order1])
    end

    it "renders the index template" do
      expect(response).to be_success
      expect(response).to render_template("index")
    end
     
  end

  describe "GET #show" do
    it "returns a success response" do
      order = FactoryBot.create(:order, agent: subject.current_agent)
      get :show, params: {id: order.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      order = FactoryBot.create(:order, agent: subject.current_agent)
      get :edit, params: {id: order.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Order" do
        expect {
          attrs = FactoryBot.attributes_for(:order, agent: subject.current_agent)
          post :create, params: {order: attrs}, session: valid_session
        }.to change(Order, :count).by(1)
      end

      it "redirects to the created order" do
        attrs = FactoryBot.attributes_for(:order, agent: subject.current_agent)
        # puts ">>> attrs = #{attrs}"
        post :create, params: {order: attrs}, session: valid_session
        expect(response).to redirect_to(agent_order_path(Order.last))
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        attrs = FactoryBot.attributes_for(:order, agent: subject.current_agent)
        attrs.delete(:style) # missing (required) style
        post :create, params: {order: attrs}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do

      let(:new_attributes) { { style: "sports" } }

      it "updates the requested order" do
        order = FactoryBot.create(:order, agent: subject.current_agent)
        put :update, params: {id: order.to_param, order: new_attributes}, session: valid_session
        order.reload
        expect(order.style).to eq("sports")
      end

      it "redirects to the order" do
        order = FactoryBot.create(:order, agent: subject.current_agent)
        put :update, params: {id: order.to_param, order: new_attributes}, session: valid_session
        expect(response).to redirect_to(agent_order_path(order))
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        order = FactoryBot.create(:order, agent: subject.current_agent)
        put :update, params: {id: order.to_param, order: {style: ''}}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested order" do
      order = FactoryBot.create(:order, agent: subject.current_agent)
      expect {
        delete :destroy, params: {id: order.to_param}, session: valid_session
      }.to change(Order, :count).by(-1)
    end

    it "redirects to the orders list" do
      order = FactoryBot.create(:order, agent: subject.current_agent)
      delete :destroy, params: {id: order.to_param}, session: valid_session
      expect(response).to redirect_to(agent_orders_url)
    end
  end

end
