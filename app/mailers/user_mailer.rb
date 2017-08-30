class UserMailer < ApplicationMailer
  default from: "contact@sample-store-app-tsn.herokuapp.com"

  def contact_form(email, name, message)
  @appname = "PhotoStock"
  @message = message
    mail(:from    => email,
         :to      => 'tyler@tyler-nixon.com',
         :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "PhotoStock"
    mail( :to => user.email,
          :subject => "Welcome to #{@appname}!")
  end

end
