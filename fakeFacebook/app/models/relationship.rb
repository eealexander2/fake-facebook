class Relationship < ActiveRecord::Base
	belongs_to :requester, class_name: "User", foreign_key: :requestor_id 
	belongs_to :requested, class_name: "User"
	#which is lame 

	def self.accepted_relationships(user)
		#here, you would just pass in the current user and hopefully get back what
		# you are looking fo
		friend_relationships = []
		Relationship.all.each do |relationship|
		if relationship.status == 2 && user.id == relationship.requestor_id || relationship.status == 2 && user.id == relationship.requested_id
			friend_relationships << relationship
		end 
		end 
	  friend_relationships 			
	end 

end

