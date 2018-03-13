class AboutPage < PublicPage
    
  def initialize()
    super('pages/about') 
  end
  
end

$AboutPage = AboutPage.new()