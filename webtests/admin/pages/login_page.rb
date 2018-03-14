require_relative 'base_page'

class Admin::LoginPage < Admin::BasePage
    
  def initialize()
    super('admins/sign_in') 
  end
  
end

$LoginPage = Admin::LoginPage.new()