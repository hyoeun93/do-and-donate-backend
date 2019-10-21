class Api::V1::UserChallengesController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @user_challenge = UserChallenge.where(user_id: @user.id)
        render json: UserChallengeSerializer.new(@user_challenge)
    end 

    def create
        @user = User.find(params[:user_id])
        @user_challenge = @user.user_challenges.create(user_challenge_params)

        # debugger
        render json: UserChallengeSerializer.new(@user_challenge)
    end 

    def update
        @user_challenge = UserChallenge.find(params[:user_challenge_id])
        @user_challenge.update(user_challenge_params)
        render json: UserChallengeSerializer.new(@user_challenge)
    end 

    def destroy
        @user_challenge.destroy(user_challenge_params)
    end 

    private

    def user_challenge_params
        params.require(:user_challenge).permit(:id, :user_id, :challenge_id, :charity_id, :datetime, :photo, :title, :completed)
    end 
end
