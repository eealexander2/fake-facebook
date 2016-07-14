class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :poster_id
      t.integer :receiver_id
      t.integer :action_user_id
      t.integer :post_type
    
      t.timestamps(null: false)

    end
  end
end
