class DonatePage < PublicPage
    
  def initialize()
    super('public/pages/donate') 
  end
  
end

$DonatePage = DonatePage.new()