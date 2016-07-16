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
		session.clear
		current_user = nil

	end

end
