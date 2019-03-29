class PostsController < ApplicationController
	def index
		@posts = Post.all
	end

	def show
		puts 'params:'
		puts params
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new(params["post"])
	  @post.save
	  redirect_to posts_path(@post)
	end

	def update
	  @post = Post.find(params[:id])
	  @post.update(params["post"])
	  redirect_to posts_path(@post)
	end

	def edit
	  @post = Post.find(params[:id])
	end
end
