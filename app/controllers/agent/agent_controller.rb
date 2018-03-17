class Agent::AgentController < ApplicationController

  before_action :authenticate_agent!

end
