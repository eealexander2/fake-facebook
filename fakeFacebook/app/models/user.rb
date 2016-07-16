class User < ActiveRecord::Base
  has_many :messages
  has_many :members
  has_many :posts, class_name: "Post", foreign_key: :poster_id 
  has_many :conversations, through: :members
 	has_secure_password

 	has_many :relationships, foreign_key: :requestor_id
 	has_and_belongs_to_many(:users,
    :join_table => "relationships",
    :foreign_key => "requestor_id",
    :association_foreign_key => "requested_id")

 	def self.friends(user,accepted_relationships) 
 		friends = []
 		accepted_relationships.each do |relationship|
 			if relationship.requested_id != user.id 
 				friends << User.find(relationship.requested_id) 
 			elsif relationship.requestor_id != user.id 
 				friends << User.find(relationship.requestor_id)
 			end 	
 			friends 
 		end 
 		friends.uniq!
 	end 
  #not really sure what methods we will need yet but we can get down into it. We should do the url shortener challenge later
end

#we haven't initialized conversations 
# you could say one of them is the join table between the two and the other is 
# we pass in the user_id and then we see that there are friend