class QuotesPage < PublicPage
    
  def initialize()
    super('public/pages/faqs') 
  end

  def quotes
  	SK::Browser.all({ class: "quote-card" })
  end
  
end

$QuotesPage = QuotesPage.new()