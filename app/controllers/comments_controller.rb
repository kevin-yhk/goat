class CommentsController < ApplicationController
    def index
        @comments = Comment.all
        render json: @comments, :include => {:player => {:only => :name}}
    end

    def show
        find_comment
        render json: @comment
    end

    def create
        comment = Comment.create(params.require(:comment).permit(:name, :content, :player_id))
        render json: comment
    end 

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render json: comment
    end

end
