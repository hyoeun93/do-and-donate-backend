class Api::V1::ChallengesController < ApplicationController
    def index
        @challenges = Challenge.all

        # @challenges_with_commments =  @challenges.map{ |challenge| challenge.to_json }
        # render json: @challenges_with_commments
        @options = {
            include: [:challengecomments, :user_challenges]
        }
        render json: ChallengeSerializer.new(@challenges, @options)
    end 

    def show
        @challenge = Challenge.find(params[:challenge_id])
        @options = {
            include: [:challengecomments, :user_challenges, :users]
        }
        render json: ChallengeSerializer.new(@challenge, @options)
    end 
end
