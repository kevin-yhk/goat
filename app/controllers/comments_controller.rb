class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments 
    end

    def show
        find_comment
        render json: @comment
    end

    def create 
        @comment = Comment.create(user_params)
        render json: {message: "Comment Created"}
    end

    private 

    def comment_params
        params.permit(:name, :content)
    end

end
