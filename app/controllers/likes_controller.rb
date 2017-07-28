class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @like = Like.create(like_params)
    redirect_to post_url
  end

  def index
    @likes = Like.all
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end

end
