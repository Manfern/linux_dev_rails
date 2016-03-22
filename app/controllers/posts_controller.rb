class PostsController < ApplicationController
	# before_action :set_post, only: [:show, :edit, :update, :destroy],:except => [:index]

	before_action :authenticate_user!, except: [:index, :show]

	def index
		@posts=Post.all.order("created_at DESC")
	end

	def update
		@post = Post.find(params[:id])
		respond_to do |format|
			if @post.update(post_params)
				redirect_to @post
			else
				render action: "edit"

			end
		end

	end
	def create
  		@post=Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def edit
		@post = Post.find(params[:id])
	end

	def new
		render layout: "admin"
		@post=Post.new

	end

	def show
		@post = Post.find(params[:id])
	end


private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
	# def set_post
	# 	@post = Post.find(params[:id])
	# end

	def post_params
	  params.require(:post).permit(:title, :content, :image)
	end

end
