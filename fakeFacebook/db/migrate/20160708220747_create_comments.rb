class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :content
      t.string :commentable_type
      t.integer :commentable_id
    end
  end
end
