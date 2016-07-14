# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 

Relationship.create(requestor_id: 2, requested_id: 1, status: 2 )
Relationship.create(requestor_id: 3, requested_id: 2, status: 2 )
Relationship.create(requestor_id: 3, requested_id: 4, status: 2 )
Relationship.create(requestor_id: 2, requested_id: 1, status: 2 )
Relationship.create(requestor_id: 2, requested_id: 1, status: 2 )
Relationship.create(requestor_id: 8, requested_id: 1, status: 2 )
Relationship.create(requestor_id: 8, requested_id: 1, status: 2 )
Relationship.create(requestor_id: 8, requested_id: 2, status: 2 )
Relationship.create(requestor_id: 8, requested_id: 3, status: 2 )
Relationship.create(requestor_id: 8, requested_id: 4, status: 2 )

#we'll just create a bunch of relationships that work together wook

Post.create(poster_id: 1, receiver_id: 2, content: "I miss you!" )
Post.create(poster_id: 1, receiver_id: 1, content: "So Excited" )
Post.create(poster_id: 1, receiver_id: 3, content: "You are awesome!" )
Post.create(poster_id: 1, receiver_id: 3, content: "Why aren't you responding to me?" )
Post.create(poster_id: 1, receiver_id: 4, content: "How are you?" )
Post.create(poster_id: 8, receiver_id: 3, content: "I miss you!" )
Post.create(poster_id: 8, receiver_id: 4, content: "I miss you!" )
Post.create(poster_id: 8, receiver_id: 1, content: "I miss you!" )

