class DonatePage < PublicPage
    
  def initialize()
    super('pages/donate') 
  end
  
end

$DonatePage = DonatePage.new()