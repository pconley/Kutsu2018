require_relative "base_page.rb"

class HomePage < BasePage
    
  def initialize()
    super('') 
  end
  
  def admin_login_link
    SK::Link.new({ id: 'admin_login_link' })
  end
  def donate_now_link
    SK::Link.new({ id: 'donate_now_link' })
  end
  # def login_button
  #   SK::Button.new({ type: "submit" })
  # end
  
  # def fill_and_submit(user=$good_user, pass=$good_pass)
  # 	username.set(user)
  # 	password.set(pass)
  #   login_button.click(2)
  # end
  
end

$HomePage = HomePage.new()