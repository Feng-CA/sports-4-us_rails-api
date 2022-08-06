class ChannelMessagesController < ApplicationController

    before_action :authenticate_user, except: [:index]
    before_action :get_channel_messages, only:[:index, :show_channel_messages]
    before_action :set_channel_message, only:[:destroy, :update]
    
    def index
        
        format_message = []
        i=0
        @channel_messages.each do |message|
            format_message[i] = transform_output(message)
            i = i+1
         end
        render json: format_message

    end

   def show_channel_messages
    
    messages_for_channel = []
    i = 0
    @channel_messages.each do |channel_message| 
        if channel_message.category_id == params[:id].to_i
            #messages_for_channel[i]= {"id"=>channel_message.id, "message"=>channel_message.message, "channel"=>channel_message.category.name,"sender"=>channel_message.user.full_name, "date":channel_message.created_at.to_date, "time":channel_message.created_at.to_s(:time)}
            messages_for_channel[i] = transform_output(channel_message)
            i=i+1  
        end
    end  
    render json: messages_for_channel
   end

   def create
        @channel_message = current_user.channel_messages.create(channel_message_params)
        if @channel_message.save
            render json: transform_output(@channel_message), status: :created 
        else
            render json: transform_output(@channel_message).errors, status: :unprocessable_entity
        end
   end

   def update
    if current_user.profile.isAdmin === true
        if @channel_message.update(channel_message_params)
            render json: transform_output(@channel_message)
        else
            render json: transform_output(@channel_message).errors, status: :unprocessable_entity
        end
    end
   end

   def destroy
        if current_user.profile.isAdmin === true
            @channel_message.destroy
        else
            render json: {alert: "You don't have permission to do that"}, status: 401
        end
    
   end
private

def channel_message_params
    params.permit(:message, :category_id)
end

def set_channel_message
    @channel_message = ChannelMessage.find(params[:id])
end

def get_channel_messages
    @channel_messages = ChannelMessage.all.order("updated_at DESC")
end

def transform_output(channel_message)
    formated_message = {"id"=>channel_message.id, "message"=>channel_message.message, "channel"=>channel_message.category.name,"sender"=>channel_message.user.full_name, "date":channel_message.created_at.to_date, "time":channel_message.created_at.to_s(:time)}
end
end
