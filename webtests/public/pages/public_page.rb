require "public_topline"
require "public_header"
require "public_navbar"

class PublicPage < BasePage

  include PublicTopline
  include PublicHeader
  include PublicNavbar
    
  def initialize(url)
    super(url) 
  end
  
end