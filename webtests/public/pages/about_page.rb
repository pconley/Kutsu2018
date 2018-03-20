class AboutPage < PublicPage
    
  def initialize()
    super('public/pages/about') 
  end
  
end

$AboutPage = AboutPage.new()