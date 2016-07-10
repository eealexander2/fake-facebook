class Relationship < ActiveRecord::Base
	belongs_to :action_user_id 

	def friend_requester 
		user = User.where(id: session[:user_id])
		#there is going to be logic in here that requires us to figure out who actually performed the action of requesting the friend 

	end 

	def requested 
		#figure out who received the request by understanding who posted the request? like i guess you could say the requested will be in the params and the requester will be the user, no matter what
		# like unless someone else is signed in here 
		
	end 

end
