class Member < ActiveRecord::Base
	belongs_to :user 
	belongs_to :conversation 
end