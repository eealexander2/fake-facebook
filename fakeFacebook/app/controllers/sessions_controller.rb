class SessionsController < ApplicatonControlller

#here, we must inherit from the application controller which is predefined for us 
 

	def create 
		@user = User.find_by(email: params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id 
			redirect_to posts_path #this will give you all of the posts 
		else 
			flash[:danger] = "Invalid Login"
			render "new"
		end 
	end 

	def destroy 
		session.clear # you would want to clear the session here 
		current_user = nil  #you would then set the current user back equal to nil here so that we know what is happening
		redirect_to login_path

	end 

end 