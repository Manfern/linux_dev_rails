class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy]

	

	def index
		@posts=Post.all.order("created_at DESC")
	end
	def update
		respond_to do |format|
			if @post.update(post_params)

				format.html {redirect_to(@post, nice: "Новость успешно отредактирована")}
				format.json {head :no_content}
			else
				format.html {render action: "edit"}
				format.json {render json: @post.errors, status: :unprocessable_entity}
			end
		end

	end
	def create
  		@post=Post.new(post_params)
		@post.save

		redirect_to @post
	end
	def edit
		@post = Post.new(params[:id])
	end

	def new
		
	end
	def show
		@post = Post.new(params[:id])
	end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
	def set_post
		@post = Post.find(params[:id])
	end
	
	def post_params
	  params.require(:post).permit(:title, :content, :image)
	end

end
