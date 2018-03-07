class Admin::PagesController < Admin::AdminController

  def index
  end

  def show
    puts "*** Admin::PagesController::show id=#{params[:id]}"
    page_name = params[:id] || 'error'
    view_file = "#{Rails.root}/app/views/admin/pages/#{page_name}.html.erb"
    if File.exists?(view_file)
      @notes = set_notes
      render page_name
    else
      render 'error'
    end
  end


  # def test
  # 	puts "*** Admin::PagesController::test"
  # end

  # def home
  # 	puts "*** Admin::PagesController::home"
  # end

  # def blog
  # 	puts "*** Admin::PagesController::blog"
  # end

  private

  def set_notes
  	notes = [
      Note.new(Date.new(2018,3,5),"toast and ...","pop up notices."),
      Note.new(Date.new(2018,3,4),"agent and email","added devise for agents; sendgrid for email on registration."),
      Note.new(Date.new(2018,3,1),"admin and content","login for admin section and all original content"),
      Note.new(Date.new(2018,2,24),"initial release","merge a design template and rails app"),
  	].sort { |a,b| b.released_on <=> a.released_on }.take(20)
  end

end
