class LikesController < ApplicationController
  def new
    session[:post_id] = params[:post_id]
    p session[:post_id]
    @like = Like.new
  end

  def create
    @post = Post.find(session[:post_id])
    @post.likes.create(post_id: session[:post_id])
    @user = @post.user
    redirect_to @user
  end

  def index
    @likes = Like.all
  end

  private

   def like_params
     params.require(:like).permit(:post_id)
   end

end
