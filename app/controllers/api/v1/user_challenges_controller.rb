class Api::V1::UserChallengesController < ApplicationController
    def index
        @user_challenge = UserChallenge.all
        render json: @user_challenge, include: [@user, @challenge]
    end 

    def update
        @user_challenge.update(user_challenge_params)
    end 

    def destroy
        @user_challenge.destroy(user_challenge_params)
    end 

    private

    def user_challenge_params
        params.require(:user_challenge).permit(:id, :user_id, :challenge_id, :charity_id, :datetime, :photo, :title)
    end 
end
