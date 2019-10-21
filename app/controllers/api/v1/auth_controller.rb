class Api::V1::AuthController < ApplicationController
    #handle login
    def create
        @user = User.find_by(email: user_params[:email])
        if @user && @user.authenticate(user_params[:password])
            # byebug
            render json: {currentUser: @user, token: encode_token({id: @user.id})}
        else 
            render({json: {error: 'User is invalid'}, status: 401})
        end 
    end 

    def show
        render json: {currentUser: current_user}
    end 

    private 
    def user_params
        params.require(:user).permit(:password, :email)
    end
end 

