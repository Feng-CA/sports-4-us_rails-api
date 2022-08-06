class UsersController < ApplicationController

    before_action :authenticate_user, except: [:destroy, :users_by_role, :index, :sign_in, :create, :show]
    before_action :set_user, only: [:show, :destroy]
    before_action :admin_ownership, only:[:destroy]

     # GET / users
     def index
        @users = User.all
        render json: @users
      end

      def users_by_role
        @users = User.all
        list_by_roles = []
        i =0
        @users.each do |user| 
          print @users
          if user.profile.account_id == params[:id].to_i
            list_by_roles[i]= user
            i=i+1  
          end
        end  
        render json: list_by_roles

      end

    
      # GET /users/1
      def show
        render json: @user
      end

      # GET auth/users
      def create
        @user = User.create(user_params)

        if @user.errors.any?
          render json: @user.errors, status: :unprocessable_entity
        else
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

      def destroy
        @user.destroy
      end

    private
       # Use callbacks to share common setup or constraints between actions.

       def set_user
         @user = User.find(params[:id])
       end

       def user_params
        params.permit(:full_name, :email, :password, :password_confirmation )
      end

      def admin_ownership 
      
        if current_user.profile.account.id != 3     #confirm Admin login
          render json: {error: "Unauthorised to do this action"}
        end  
      
      end

end
