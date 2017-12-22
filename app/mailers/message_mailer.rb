class MessageMailer < ApplicationMailer

  def new_message(message)
    @message = message
    mail(from: 'lewis@eaglemountaindigital.com', to: 'lew.vine@gmail.com', subject: "Eagle Mountain Digital | Message from #{@message.name}")
  end
  
  def contact_response(message)
    @message = message
    mail(from: 'lewis@eaglemountaindigital.com', to: @message.email, subject: "#{@message.name}, we received your form! | Eagle Mountain Digital")
  end
  
end
