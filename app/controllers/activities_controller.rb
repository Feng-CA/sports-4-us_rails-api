class ActivitiesController < ApplicationController
    before_action :authenticate_user, only: [:create, :update, :delete]
    before_action :set_activity, only: [:show, :update, :destroy]
    before_action :check_admin, only: [:create, :update, :delete]
   
   
     # GET / activities
     def index
       @activities = Activity.all
       format_activities = []
       i=0
       @activities.each do |activity|
         format_activities[i] = transform_output(activity)
         i = i+1
       end
         render json: format_activities

     end
    
     # GET /activities/1
     def show
     
      render json: transform_output(@activity)
   
     end
   
     # POST /activities
     def create
        
      @activity = Activity.create(activity_params)
     
        if @activity.save
          render json: transform_output(@activity), status: :created #, location: @score
        else
          render json: transform_output(@activity).errors, status: :unprocessable_entity
        end
     end
   
     # PATCH/PUT /activities/1
     def update
       if @activity.update(activity_params)
         render json: transform_output(@activity)
       else
         render json: transform_output(@activity).errors, status: :unprocessable_entity
       end
     end
   
     # DELETE /activities/1
     def destroy
       @activity.destroy
     end
   
     private
       # Use callbacks to share common setup or constraints between actions.
       def set_activity
         @activity = Activity.find(params[:id])
       end
   
       # Only allow a list of trusted parameters through.
       def activity_params
         params.require(:activity).permit(:category_id, :title, :description, :date_time, :location, :user_id, :cost, :quantity_limit )
       end

       def check_admin 
          if current_user.profile.account.id != 3     #confirm Admin login
            render json: {error: "Unauthorised to do this action"}
          end  
      end

      def transform_output(activity)
        formated_message = {"id"=>activity.id, "category"=>activity.category.name ,"title"=>activity.title, "description"=>activity.description, "date_time"=>activity.date_time, "location"=>activity.location, "organiser"=>activity.user.full_name, "cost"=>activity.cost, "quantity_limit"=>activity.quantity_limit}
       end

end
