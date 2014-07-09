class PostsController < ApplicationController
  expose(:post)
  expose(:posts)

  def index
  end

  def create
    redirect_to posts_path if post.save
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
