class MessagesController < ApplicationController

    def new
        @message = Message.new
    end
    
    def create
        @message = Message.new(message_params)
        
        if @message.valid?
            MessageMailer.new_message(@message).deliver_now
            MessageMailer.contact_response(@message).deliver_now
            redirect_to contact_path, notice: "Your form was sent."
        else
            flash[:alert] = "An error occurred while delivering this message."
            render :new
        end
    end
    
    private
    
        def message_params
            params.require(:message).permit(:name, :email, :content, :day_of_week, :time_of_day)
        end
            

end
