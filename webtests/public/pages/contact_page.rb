class ContactPage < PublicPage
    
  def initialize()
    super('public/pages/contact') 
  end
  
end

$ContactPage = ContactPage.new()