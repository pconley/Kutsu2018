
# Including this concern in your controller to make the agent's orders
# available to the view 

module AgentProfile

  extend ActiveSupport::Concern

  included do
    before_action :get_orders
  end

  protected

  def get_orders
      @orders = Order.where(agent: current_agent) if current_agent
  end

end