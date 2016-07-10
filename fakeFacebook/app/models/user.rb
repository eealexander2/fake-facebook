class User < ActiveRecord::Base
  has_many :messages
  has_many :members
  has_many :conversations, through: :members

  #not really sure what methods we will need yet but we can get down into it. We should do the url shortener challenge later
end

#we haven't initialized conversations 
