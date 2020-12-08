class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
