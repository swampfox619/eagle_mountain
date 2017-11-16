class MessageMailer < ApplicationMailer

  default from: "Eagle Mountain Digital <Lewis@EagleMountainDigital.com>"
  default to: "Lew Vine <lew.vine@gmail.com>"

  def new_message(message)
    @message = message
    mail subject: "Eagle Mountain Digital | Message from #{message.name}"
  end
  
  def contact_response(message)
    @message = message
    mail(to: @message.email, subject: "#{@message.name}, we received your form! | Eagle Mountain Digital")
  end
  
end
