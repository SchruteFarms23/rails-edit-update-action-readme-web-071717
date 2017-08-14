class PostsController < ApplicationController
	def index #posts_path for Gets
		@posts = Post.all
	end

	def show #post_path          GET  /posts/:id
		@post = Post.find(params[:id])
	end

	def new #new_post_path         /posts/new
		@post = Post.new
	end

	def create #posts_path for POST
	  @post = Post.new
	  @post.title = params[:title]
	  @post.description = params[:description]
	  @post.save
	  redirect_to post_path(@post)
	end

	def edit #edit_post_path       /posts/:id/edit
		@post = Post.find(params[:id])
	end

	def update #post_path for PUT    PUT  /posts/:id
		@post = Post.find(params[:id])
		@post.update(title: params[:title], description: params[:description])
		redirect_to post_path(@post) #redirects you to show

	end

end
