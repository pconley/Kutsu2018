class Admin::PagesController < ApplicationController

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
      Note.new(Date.new(2018,3,1),"admin pages","sign in/out using devise to access the admin pages... only a quotes administration page really functional"),
      Note.new(Date.new(2018,2,24),"initial release","merge a template with a standard rails app"),
  	]
    @notes = notes
        .sort { |a,b| b.released_on <=> a.released_on }
        .take(20)
  end

end
