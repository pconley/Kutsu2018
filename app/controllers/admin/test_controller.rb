class Admin::TestController < Admin::AdminController

  # POST /admin/test/sendex

  def sendex
  	puts "*** Admin::TestController::sendex"
    # Tell the UserMailer to send a welcome email after save
    TestMailer.example_email("pat conley","pjc2018","pconley312@gmail.com").deliver_later
    flash[:notice] = "Email was sent... or so we think!"
  end

end
