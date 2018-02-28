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
      Note.new(Date.new(2018,2,26),"security fixes","well not really!"),
      Note.new(Date.new(2018,2,24),"performance fixes","well not really any faster!"),
  	]
    @notes = notes
        .sort { |a,b| b.released_on <=> a.released_on }
        .take(20)
  end

end
