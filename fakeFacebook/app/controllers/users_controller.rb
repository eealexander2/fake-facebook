class UsersController < ApplicationController

	#remember it all so you can do it again 
	#we don't want a user index page because we will not want to show all of the users 


	def new
		@user = User.new 
		#get request to get to page to create new user
	end 

	def create
		@user = User.new(user_params)
		if @user && @user.authenticate 
			@user = current_user 
			session[:user_id] = @user.id 
			redirect_to posts_path 
		else 
			flash[:danger] = "Invalid Registration. Please try again!"
			render "new"
			# we want to render here so that we don't lose important information. 
		end 
	end 

	def show 
		require_login 
		@user = User.find(session[:user_id])
		# i don't think you need to render anything here. You are good to go 
		# in my opinion
	end 

	def edit 
		@user = User.find(params[:id]) #BC this would be the users' path that we need to see.
		if @user != current_user
			flash[:danger] = "Oops! You are not allowed to update the profile of other people!"
			redirect_to edit_user_path #I think this is right ? 
		end
		#because you always know where the session ID will be, I gues
	end 

	def update 
		@user = User.find(params[:id])
		if @user != current_user 
			flash[:danger] = "You do not have the proper access to edit this page."
			redirect_to edit_user_path 
		end 
		if  
		 	@user.update(edit_user_params) #these are hard params that you define later 
		 	redirect_to @user
		else
			render "edit"
		end  
	end

	private 

	def user_params 
		params.require(:user).permit(:name, :email, :address, :photo)
	end  

	def edit_user_params 
		params.require(:user).permit(:name, :email, :photo)
	end 
end 
