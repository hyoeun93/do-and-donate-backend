class Api::V1::UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        render json: {currentUser: @user, token: encode_token({id: @user.id})}
    end 

    private
    def user_params
        params.require(:user).permit(:id, :username, :email, :password)
    end
end
