module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryBot.create(:admin) 
    end
  end

  def login_agent
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:agent]
      agent = FactoryBot.create(:agent)
      agent.confirm # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in agent
    end
  end
end