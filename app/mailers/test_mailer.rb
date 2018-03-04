class TestMailer < ApplicationMailer

  def example_email(name,login,addr)
    @name = name
    @login = login
    @address = addr
    @url  = 'http://example.com/login'
    mail(to: @address, subject: 'Welcome to Kutsu2018')
  end

end
