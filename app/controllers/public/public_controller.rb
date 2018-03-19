class Public::PublicController < ApplicationController

  include AgentProfile # concern... makes agent profile available if logged in

end
