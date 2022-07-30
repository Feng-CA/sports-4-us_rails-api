class MessagesController < ApplicationController
    
    before_action :authenticate_user, except: [:index]
    before_action :set_message, only: [:show, :destroy]
    before_action :set_all_messages, except: [:show, :create, :destroy]
    before_action :check_ownership, only: [:destroy, :show]

    
    def index
      format_message = []
      i=0
      @messages.each do |message|
        format_message[i] = transform_output(message)
        i = i+1
      end
        render json: format_message
    end

    def create  
        @message = current_user.send_user_id_messages.create(message_params)
            if @message.save
              render json: transform_output(@message), status: :created 
            else
              render json: transform_output(@message), status: :unprocessable_entity
            end
    end
    
    def show
        render json: transform_output(@message)
    end

    def message_by_receiver
        receiver_messages = []
        i =0
        @messages.each do |message| 
          if message.receiver_user_id == current_user.id
            receiver_messages[i]= message
            i=i+1  
          end
        end  
        render json: receiver_messages
    end

    def message_by_sender   
        sender_messages = []
        i =0
        @messages.each do |message| 
          if message.sender_user_id == current_user.id
            sender_messages[i]= message
            i=i+1  
          end
        end  
        render json: sender_messages
    end


    def all_user_messages
        user_messages = []
        i =0
        @messages.each do |message| 
          if (message.sender_user_id == current_user.id)||(message.receiver_user_id == current_user.id)
            user_messages[i]= message
            i=i+1  
          end
        end  
        render json: user_messages
    end

    def destroy
        @message.destroy
    end

private

    def message_params
        params.permit(:message, :receiver_user_id, :sender_user_id)
    end

    def set_message
        @message = Message.find(params[:id])
    end
    def set_all_messages
        @messages = Message.all
    end

     def check_ownership
         if current_user.id !=@message.receiver_user_id
           render json: {error: "You don't have permission to do that"}, status: 401
         end
     end

     def transform_output(message)
      formated_message = {"message_id"=>message.id ,"sender"=>message.sender_user.full_name,"receiver"=>message.receiver_user.full_name, "message"=>message.message, "date":message.created_at.to_date, "time":message.created_at.to_s(:time)}
     end
end
