class BookingsController < ApplicationController
    before_action :authenticate_user
    before_action :set_booking, only: [:show, :destroy]
    before_action :all_bookings, only: [:show, :show_by_user, :index]
    before_action :check_ownership, only: [:show, :destroy]
     
    # GET / bookings
     def index
        #@bookings = Booking.all
        render json: @bookings
     end

     # GET / bookings
    def show
        render json: @booking
    end

    def show_by_user
        #@bookings = Booking.all
        user_bookings = []
        i =0
        @bookings.each do |booking| 
          if booking.user_id == current_user.id
            user_bookings[i] = booking
            i=i+1  
          end
        end  
        render json: user_bookings
    end

      # Post / bookings
    def create
      
        @booking = current_user.bookings.create(bookings_params)
    
       if @booking.save
         render json: @booking, status: :created #, location: @score
       else
         render json: @booking.errors, status: :unprocessable_entity
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
        @bookings = Booking.all
    end

    def check_ownership 
        if current_user.id != @booking.user.id       #confirm ownership of profile
          if current_user.profile.account.id != 3     #confirm Admin login
            render json: {error: "Unauthorised to do this action"}
          end  
        end
      end


end
