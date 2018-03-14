class ContactPage < PublicPage
    
  def initialize()
    super('pages/contact') 
  end
  
end

$ContactPage = ContactPage.new()