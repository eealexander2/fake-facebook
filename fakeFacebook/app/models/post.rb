class Post < ActiveRecord::Base
  has_many :comments, as: :commentable
  belongs_to :poster, class_name: "User", foreign_key: :poster_id
  belongs_to :receiver, class_name: "User", foreign_key: :receiver_id
end
