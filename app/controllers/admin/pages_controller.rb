class Admin::PagesController < Admin::AdminController

  def test
  	puts "*** Admin::PagesController::test"
  end

  def home
  	puts "*** Admin::PagesController::home"
  end

  def blog
  	puts "*** Admin::PagesController::blog"
  end

  def notes
  	puts "*** Admin::PagesController::notes"
  	notes = [
      Note.new(Date.new(2018,3,1),"admin and content","login for admin section and all original content"),
      Note.new(Date.new(2018,2,24),"initial release","merge a design template and rails app"),
  	]
    @notes = notes
        .sort { |a,b| b.released_on <=> a.released_on }
        .take(20)
  end

end
