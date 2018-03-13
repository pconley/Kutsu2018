class HomePage < PublicPage
    
  def initialize()
    super('') 
  end
  
  # def admin_login_link
  #   SK::Link.new({ id: 'admin_login_link' })
  # end

  # def donate_now_link
  #   SK::Link.new({ id: 'donate_now_link' })
  # end
  
end

$HomePage = HomePage.new()