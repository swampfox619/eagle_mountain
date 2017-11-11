class MessageMailer < ApplicationMailer

  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "Lew Vine <lew.vine@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end
  
end
