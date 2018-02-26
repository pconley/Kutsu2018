class AdminController < ApplicationController

  before_action :authenticate_admin!

  def test
  	puts "AdminController::test"
  end

end
