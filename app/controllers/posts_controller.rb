class PostsController < ApplicationController
  def index
  	@post = Post.new
  	@posts = Post.all.order(id: "DESC")
  end

  def create
  	post = Post.new(post_params)
  	post.save
  	render :json => post.comment
  end

  private
  def post_params
  	params.require(:post).permit(:comment)
  end
end
