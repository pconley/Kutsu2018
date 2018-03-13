class VolunteerPage < PublicPage
    
  def initialize()
    super('pages/volunteer') 
  end
  
end

$VolunteerPage = VolunteerPage.new()