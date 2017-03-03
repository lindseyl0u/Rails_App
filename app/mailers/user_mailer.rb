class UserMailer < ApplicationMailer
  default from: "linds.taylor90@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
    	:to => 'linds.taylor90@gmail.com',
    	:subject => "KAWAIIKANDI: A new contact form message from #{name}")
  end
end
