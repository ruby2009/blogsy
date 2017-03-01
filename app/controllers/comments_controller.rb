class CommentsController < ApplicationController

  def create
   @comment = Comment.new(comment_params)
   if @comment.save
     render json: @comment
   else
     render json: @comment.errors.full_messages, status: 400
   end

  end

  private

  def comment_params
    params.permit(:user_id, :post_id, :body)
  end

end
