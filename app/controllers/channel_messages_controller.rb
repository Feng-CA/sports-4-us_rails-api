class ChannelMessagesController < ApplicationController

    before_action :authenticate_user
    before_action :get_messages, only:[:index, :show_channel_messages]
 
    def index
        render json: @channel_messages

    end

   def show_channel_messages
    
    messages_for_channel = []
    i = 0
    @channel_messages.each do |channel_message| 
        if channel_message.category_id == params[:id].to_i
            messages_for_channel[i]= {"id"=>channel_message.id, "message"=>channel_message.message, "channel"=>channel_message.category.name,"sender"=>channel_message.user.full_name, "date":channel_message.created_at.to_date, "time":channel_message.created_at.to_s(:time)}
          i=i+1  
        end
    end  
    render json: messages_for_channel
   end

   def create

    @channel_message = current_user.channel_messages.create(channel_message_params)
    if @channel_message.save
    render json: @channel_message, status: :created 
    else
    render json: @channel_message.errors, status: :unprocessable_entity
    end

   end
private

def channel_message_params
    params.permit(:message, :category_id)
end

def get_messages
    @channel_messages = ChannelMessage.all.order("updated_at DESC")
end
  

end
