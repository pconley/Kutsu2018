class PublicPage < BasePage

  include PublicTopline
  include PublicHeader
  include PublicNavbar
    
  def initialize(url)
    super(url) 
  end
  
end