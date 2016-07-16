class PostsController < ApplicationController

	def index
		user = User.find(session[:user_id]) #the problem here is that you can't sa
		accepted_relationships = Relationship.accepted_relationships(user)
		friends = User.friends(user, accepted_relationships)
		@posts =[]

		friends.each do |friend|
			@posts << friend.posts
			p friend.posts
		end

	  @sent_posts = @posts.flatten.uniq
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.params[]
	end
end
