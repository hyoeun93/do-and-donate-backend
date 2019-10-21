class Api::V1::ChallengecommentsController < ApplicationController
    def index
        @challenge = Challenge.find(params[:challenge_id])
        @challengecomments = Challengecomment.where(challenge_id: @challenge.id)
        render json: ChallengecommentSerializer.new(@challengecomments)
    end 

    def create
        @challenge = Challenge.find(params[:challenge_id])
        @challengecomments = @challenge.challengecomments.create(challengecomment_params)
        
        render json: ChallengecommentSerializer.new(@challengecomments)
    end 

    private
    def challengecomment_params
        params.require(:challengecomment).permit(:id, :challenge_id, :content)
    end 
end
