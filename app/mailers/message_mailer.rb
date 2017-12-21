class MessageMailer < ApplicationMailer

  def new_message(message)
    @message = message
    mail(to: 'lewis@eaglemountaindigital.com', subject: "Eagle Mountain Digital | Message from #{@message.name}")
  end
  
  def contact_response(message)
    @message = message
    mail(to: @message.email, subject: "#{@message.name}, we received your form! | Eagle Mountain Digital")
  end
  
end
