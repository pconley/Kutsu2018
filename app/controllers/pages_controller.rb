class PagesController < ApplicationController

  def about
  end

  def home
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
