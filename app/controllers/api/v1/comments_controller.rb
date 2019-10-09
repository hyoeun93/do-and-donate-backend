class Api::V1::CommentsController < ApplicationController
    def create
        @user_challenge = UserChallenge.find(params[:user_challenge_id])
        @comment = @user_challenge.comments.create(comment_params)
    end 

    def destroy
        @comment.destroy(comment_params)
    end

    private
    def comment_params
        params.require(:comment).permit(:id, :content, :user_challenge_id)
    end
end
