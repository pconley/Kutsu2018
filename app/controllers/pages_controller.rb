class PagesController < ApplicationController

  before_action do
    @name = "<i>National Odd Shoe Exchange</i>".html_safe
    @bold = "<b>#{@name}</b>".html_safe
  end

  def about
  end

  def home
    @quotes = Quote.all
  end

  def error
  end

  def contact
  	@page = 'contact'
  end

  def donate
  end

  def faqs
    @quotes = Quote.all
  end

  def history
  end

  def programs
  end

  def requests
  end

end
