class PostsController < ApplicationController
	def index
		@posts=Post.all
	end

	def create
  		@post=Post.new(post_params)
		@post.save
		redirect_to @post
	end
	

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def post_params
  params.require(:post).permit(:title, :content, :image)
end

end
