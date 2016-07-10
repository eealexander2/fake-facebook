class Post < ActiveRecord::Base
  has_many :comments, as: :commentable

  def sender
  	user = User.find(session[:id])
  	if user.id == poster_id 
  		sender == user
  	end 
  end

  def receiver
   	if user.id == recevier_id 
   		receiver == user 
   	else 
   		receiver = params[:user_id]
   		#i guess my idea would be that you'd be able to find the receiver of the message based on the page that you are on
  end

  def personal_post?
  	return true if receiver == sender  
  end 

  def shared_post? 
  	return true if receiver != sender 
	end 

end
