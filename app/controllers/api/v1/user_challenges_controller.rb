class Api::V1::UserChallengesController < ApplicationController
    def index
        
        @user = User.find(params[:user_id])
        @user_challenge = UserChallenge.where(user_id: @user.id)
        render json: UserChallengeSerializer.new(@user_challenge)
    end 

    def create
        @user = User.find(params[:user_id])
        @user_challenge = @user.user_challenges.create(user_challenge_params)
        render json: UserChallengeSerializer.new(@user_challenge)
    end 

    def update
        @user_challenge = UserChallenge.find(params[:user_challenge_id])
        @user_challenge.update(user_challenge_params)
        
        @user_challenge.photos.attach(io: image_io, filename: image_name)
        render json: UserChallengeSerializer.new(@user_challenge)
        
        unless @user_challenge.save
            puts @user_challenge.errors.inspect
            render json: { error: "Unable to create post"}, status: 422
        end 
    end 

    def destroy
        @user_challenge.destroy(user_challenge_params)
    end 

    private

    def user_challenge_params
        params.require(:user_challenge).permit(:id, :user_id, :challenge_id, :charity_id, :datetime, :title, :completed, photos: [])
        # photos: []
    end 

    def image_io
        # params.permit(:photos)
        decoded_image = Base64.decode64(params[:photos])
        StringIO.new(decoded_image)
    end 

    def image_name
        params.permit(:file_name)
        # params[:file_name]
    end 
end
