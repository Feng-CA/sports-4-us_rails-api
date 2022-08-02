class BookingsController < ApplicationController
    before_action :authenticate_user, except: [:index]
    before_action :set_booking, only: [:show, :destroy]
    before_action :all_bookings, only: [:show, :show_by_user, :index]
    before_action :check_ownership, only: [:show, :destroy]
    before_action :check_member, only: [:create]
     
    # GET / bookings
     def index
      formated_booking = []
      i=0
      @bookings.each do |booking|
        formated_booking[i] = transform_output(booking)
        i = i+1
      end
        render json: formated_booking
    end
     

     # GET / bookings
    def show
        render json: transform_output(@booking)
    end

    def show_by_user
        #@bookings = Booking.all
        user_bookings = []
        i =0
        @bookings.each do |booking| 
          if booking.user_id == current_user.id
            user_bookings[i] = transform_output(booking)
            i=i+1  
          end
        end  
        render json: user_bookings
    end

      # Post / bookings
    def create 
      @booking = current_user.bookings.create(bookings_params)
       if @booking.save
         render json: transform_output(@booking), status: :created #, location: @score
       else
         render json: transform_output(@booking).errors, status: :unprocessable_entity
       end
    end

    # DELETE /profile/1
    def destroy
        @booking.destroy
    end

    private

    def bookings_params
        params.permit(:activity_id)
    end

    def set_booking
        @booking = Booking.find(params[:id])
    end

    def all_bookings
        @bookings = Booking.all.order("updated_at DESC")
    end

    def check_member
        if current_user.profile.account.id != 1    #confirm Admin login
            render json: {error: "Unauthorised to do this action"}
        end  
    end

    def check_ownership 
        if current_user.id != @booking.user.id       #confirm ownership of profile
          if current_user.profile.account.id != 3     #confirm Admin login
            render json: {error: "Unauthorised to do this action"}
          end  
        end
      end
    
    def transform_output(booking)
        formated_booking = {"bookingId"=> booking.id, "member"=>booking.user.full_name , "activity_id"=>booking.activity.id, "activity_title"=>booking.activity.title }
    end

end
