class Api::V1::ChallengesController < ApplicationController
    def index
        @challenges = Challenge.all
        render json: @challenges
    end 
end
