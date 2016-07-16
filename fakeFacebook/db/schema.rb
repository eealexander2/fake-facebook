# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160709030534) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.string  "content"
    t.string  "commentable_type"
    t.integer "commentable_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "user_id"
    t.string  "content"
  end

  create_table "members", force: :cascade do |t|
    t.integer "user_id"
    t.integer "conversation_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "user_id"
    t.integer "conversation_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string  "content"
    t.integer "poster_id"
    t.integer "receiver_id"
    t.integer "action_user_id"
    t.integer "post_type"
  end

  create_table "relationships", :force => true, :id => false do |t|
    t.integer "requestor_id"
    t.integer "requested_id"
    t.integer "status"
    t.integer "action_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "photo"
  end

end
