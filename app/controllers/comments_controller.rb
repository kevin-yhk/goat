class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments 
    end

    def show
        find_comment
        render json: @comment
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render json: comment
    end

end
