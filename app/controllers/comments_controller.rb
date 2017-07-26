class CommentsController < ApplicationController

  def create
    @comment = Comment.create(params[:comment])
    redirect_to posts_url
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
