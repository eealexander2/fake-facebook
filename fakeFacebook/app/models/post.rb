class Post < ActiveRecord::Base
  has_many :comments, as: :commentable

  def sender
    #I think you just need to create a sender and a reciever id and you are good to go
  end

  def receiver

  end

end
