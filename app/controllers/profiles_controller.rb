class ProfilesController < ApplicationController

    before_action :authenticate_user, except: [:index, :show] 
    before_action :check_ownership, only: [:update, :destroy]
    before_action :set_profile, only: [:show, :update, :destroy]
    before_action :display_format, only: [:show]

    # GET / profiles
    def index
        format_list = []
        i = 0
        @profiles = Profile.all
        @profiles.each do |profile| 
            format_list[i] = {"fullname" =>profile.user.full_name, "location"=>profile.location, "contact_no" => profile.contact_no , "emergency_contact"=> profile.emergency_contact, "emergency_contact_no" => profile.emergency_contact_no, "cycling"=>profile.cycling, "golf"=>profile.golf, "tennis"=>profile.tennis, "soccer"=>profile.soccer, "hiking"=>profile.hiking, "cricket"=>profile.cricket, "running"=>profile.running, "basketball"=>profile.basketball, "account_id"=>profile.account.name}
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
        @profile = Profile.create(profile_params)
        
        #@profile = current_user.profile.create(profile_params)
    
       if @profile.save
         render json: @profile, status: :created #, location: @score
       else
         render json: @profile.errors, status: :unprocessable_entity
       end
     end

     def last_profile
        @profile = Profile.last
        render json: @profile
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


     private
      # Use callbacks to share common setup or constraints between actions.
      def set_profile
        @profile = Profile.find(params[:id])
      end

      def profile_params
       params.permit(:user_id, :location, :contact_no, :emergency_contact, :emergency_contact_no, :cycling, :golf, :tennis, :soccer, :hiking, :cricket, :running, :basketball, :account_id)
     end

     def display_format
        @format  = {"fullname" =>@profile.user.full_name, "location"=>@profile.location, "contact_no" => @profile.contact_no , "emergency_contact"=> @profile.emergency_contact, "emergency_contact_no" => @profile.emergency_contact_no, "cycling"=>@profile.cycling, "golf"=>@profile.golf, "tennis"=>@profile.tennis, "soccer"=>@profile.soccer, "hiking"=>@profile.hiking, "cricket"=>@profile.cricket, "running"=>@profile.running, "basketball"=>@profile.basketball, "account_id"=>@profile.account.name}
    end

    def check_ownership
      if current_user.id != @profile.user.id
        render json: {error: "Unauthorised to do this action"}
      end
    end

end




