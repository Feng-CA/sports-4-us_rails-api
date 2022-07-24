class UsersController < ApplicationController

    before_action :set_user, only: [:show]

     # GET / users
     def index
        @users = User.all
        render json: @users
      end
    
      # GET /users/1
      def show
        render json: @user
      end

      # GET auth/users
      def create

        @user = User.create(user_params)
        #print @user

        if @user.errors.any?
          render json: @user.errors, status: :unprocessable_entity
        else
          #render json: @user.id, status: :created #, location: @message
          auth_token = Knock::AuthToken.new payload: {sub: @user.id}
          render json: {full_name: @user.full_name, jwt: auth_token.token}, status: :created
        end 
      end

      def sign_in
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password])
          auth_token = Knock::AuthToken.new payload: {sub: @user.id}
          render json: {full_name: @user.full_name, jwt: auth_token.token}, status: 200
        else
          render json: {error: "Invalid email or password"}
        end
      end

      private
       # Use callbacks to share common setup or constraints between actions.
       def set_user
         @user = User.find(params[:id])
       end

       def user_params
        params.permit(:full_name, :email, :password, :password_confirmation )
      end

end
