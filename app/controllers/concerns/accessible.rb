
# Including this concern in your Sessions and Registrations Controller 
# while performing this check as a before_action on your new methods 
# is one simple way to setup multiple users for devise

module Accessible

  extend ActiveSupport::Concern

  included do
    before_action :check_user
  end

  protected

  def check_user
    if current_admin
      flash.clear
      redirect_to(admin_page_path(:home)) && return
    elsif current_agent
      flash.clear
      redirect_to(agent_page_path(:home)) && return
    end
  end

end