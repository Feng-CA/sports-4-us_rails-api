class ProfilesController < ApplicationController

    before_action :authenticate_user, except: [:index, :show] 
    before_action :set_profile, only: [:show, :update, :destroy]
    before_action :check_ownership, only: [:update]
    before_action :display_format, only: [:show]
    before_action :admin_ownership, only:[:destroy]
    

    # GET / profiles
    def index
        format_list = []
        i = 0
        @profiles = Profile.all
        @profiles.each do |profile| 
            format_list[i] = {"id"=>profile.id,"fullname" =>profile.user.full_name, "location"=>profile.location, "contact_no" => profile.contact_no , "emergency_contact"=> profile.emergency_contact, "emergency_contact_no" => profile.emergency_contact_no, "cycling"=>profile.cycling, "golf"=>profile.golf, "tennis"=>profile.tennis, "soccer"=>profile.soccer, "hiking"=>profile.hiking, "cricket"=>profile.cricket, "running"=>profile.running, "basketball"=>profile.basketball, "account_id"=>profile.account.name, "isAdmin"=>profile.isAdmin}
            i=i+1
        end
        render json: format_list
     end
   
     # GET /profiles/1
     def show
       render json: @format
     end

     # Post profile
     def create
       #@profile = Profile.create(profile_params)
       
       @profile = Profile.create({"user" => current_user, "account_id"=>1})
        #@profile = current_user.profile.create(profile_params)
    
       if @profile.save
         render json: @profile, status: :created #, location: @score
       else
         render json: @profile.errors, status: :unprocessable_entity
       end
     end

      # PATCH/PUT /profile/1
      def update
        if @profile.update(profile_params)
          render json: @profile
        else
          render json: @profile.errors, status: :unprocessable_entity
        end
      end

         # DELETE /profile/1
     def destroy
        @profile.destroy
     end

     def find_user_profile
        #@profile = Profile.find_by_user_id(current_user.profile.user_id)
        if current_user.profile != nil
          @profile = Profile.find_by_user_id(current_user.profile.user_id)
          @format  = {"id"=>@profile.id, "fullname" =>@profile.user.full_name, "location"=>@profile.location, "contact_no" => @profile.contact_no , "emergency_contact"=> @profile.emergency_contact, "emergency_contact_no" => @profile.emergency_contact_no, "cycling"=>@profile.cycling, "golf"=>@profile.golf, "tennis"=>@profile.tennis, "soccer"=>@profile.soccer, "hiking"=>@profile.hiking, "cricket"=>@profile.cricket, "running"=>@profile.running, "basketball"=>@profile.basketball, "account_id"=>@profile.account.name, "isAdmin"=>@profile.isAdmin}
          render json: @format
        else
          render json: {id: ""}
        end
      end


     private
      # Use callbacks to share common setup or constraints between actions.
      def set_profile
        @profile = Profile.find(params[:id])
      end

      def profile_params
       params.permit(:user_id, :location, :contact_no, :emergency_contact, :emergency_contact_no, :cycling, :golf, :tennis, :soccer, :hiking, :cricket, :running, :basketball, :account_id)
     end

     def display_format
        @format  = {"id"=>@profile.id, "fullname" =>@profile.user.full_name, "location"=>@profile.location, "contact_no" => @profile.contact_no , "emergency_contact"=> @profile.emergency_contact, "emergency_contact_no" => @profile.emergency_contact_no, "cycling"=>@profile.cycling, "golf"=>@profile.golf, "tennis"=>@profile.tennis, "soccer"=>@profile.soccer, "hiking"=>@profile.hiking, "cricket"=>@profile.cricket, "running"=>@profile.running, "basketball"=>@profile.basketball, "account_id"=>@profile.account.name, "isAdmin"=>@profile.isAdmin}
    end

    def admin_ownership 
      
        if current_user.profile.account.id != 3     #confirm Admin login
          render json: {error: "Unauthorised to do this action"}
        end  
      
    end

    def check_ownership 
      if current_user.id != @profile.user.id       #confirm ownership of profile
        if current_user.profile.account.id != 3     #confirm Admin login
          render json: {error: "Unauthorised to do this action"}
        end  
      end
    end

end




