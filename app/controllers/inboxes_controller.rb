class InboxesController < ApplicationController
    before_action :authenticate_user, only: [:received_inbox_by_user, :show, :update, :destroy]
    before_action :set_inbox, only: [:show, :update, :destroy]
    before_action :check_ownership, only: [:update]
   
    

    # GET / Inbox
    def index
        @inboxes = Inbox.all 
        render json: @inboxes
     end
   
     # GET /inbox/1
     def show
       render json: @inbox
     end

     def received_inbox_by_user
        @inboxes = Inbox.all 
        user_messages = []
        i = 0 
       
        @inboxes.each do |message| 
            #Category.create(name: c)
          if message.user_id == current_user.id
            user_messages[i]=message
            i = i+1
          end    
        end
        render json: user_messages
     end

     # Post Inbox
     def create
       #@profile = Profile.create(profile_params)
        @inbox = current_user.inboxes.create(inbox_params)
    
       if @inbox.save
         render json: @inbox, status: :created #, location: @score
       else
         render json: @inbox.errors, status: :unprocessable_entity
       end
     end

      # PATCH/PUT /profile/1
      def update
        if @inbox.update(inbox_params)
          render json: @inbox
        else
          render json: @inbox.errors, status: :unprocessable_entity
        end
      end

         # DELETE /profile/1
     def destroy
        @inbox.destroy
     end

     #def find_user_profile
        
       # if current_user.profile != nil
        #  @profile = Profile.find_by_user_id(current_user.profile.user_id)
        #  render json: @profile
        #else
       #   render json: {id: ""}
       # end
     # end


     private
      # Use callbacks to share common setup or constraints between actions.
      def set_inbox
        @inbox = Inbox.find(params[:id])
      end

      def inbox_params
       params.permit(:message, :user_id)
     end

    def check_ownership 
      if current_user.id != @inbox.user.id       #confirm ownership of profile
        #if current_user.inbox.account.id != 3     #confirm Admin login
          render json: {error: "Unauthorised to do this action"}
        #end  
      end
    end

end



