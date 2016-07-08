class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :requestor_id
      t.integer :requested_id
      t.integer :status
      t.integer :action_user_id
    end
  end
end
