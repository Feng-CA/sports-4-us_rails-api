class ActivitiesController < ApplicationController
    #before_action :authenticate_user, except: [:index, :show]
    before_action :set_activity, only: [:show, :update, :destroy]
    # before_action :check_ownership, only: [:update, :destroy]
   
     # GET / activities
     def index
       @activities = Activity.all
       render json: @activities
     end
   
     # GET /activities/1
     def show
      #obj = {"id"=>@activity.id, "category"=>@activity.category.name}
      render json: @activity
      #render json: obj
     end
   
     # POST /activities
     def create
        @activity = Activity.create(activity_params)
    
       if @activity.save
         render json: @activity, status: :created #, location: @score
       else
         render json: @activity.errors, status: :unprocessable_entity
       end
     end
   
     # PATCH/PUT /activities/1
     def update
       if @activity.update(activity_params)
         render json: @activity
       else
         render json: @activity.errors, status: :unprocessable_entity
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
   
     #  def check_ownership
      #   if current_user.id !=@score.user.id
      #     render json: {error: "You don't have permission to do that"}, status: 401
      #   end
      # end
   #end

end
