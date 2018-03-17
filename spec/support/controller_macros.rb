module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in FactoryBot.create(:admin) 
    end
  end

  def xlogin_agent(agent = FactoryBot.create(:agent))
    before(:each) do
      puts ">>> login_agent : agent = #{agent}"
      agent.confirm 
      @request.env["devise.mapping"] = Devise.mappings[:agent]
      sign_in agent
    end
  end

  def login_agent
    before(:each) do
      agent = FactoryBot.create(:agent, email: 'test@test.test')
      agent.confirm 
      @request.env["devise.mapping"] = Devise.mappings[:agent]
      sign_in agent
    end
  end

end