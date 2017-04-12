class ChangeForeignKeysInItems < ActiveRecord::Migration
  def change
    add_column :items, :lister_id, :integer
    add_column :items, :bidder_id, :integer
    remove_column :items, :user_id, :integer
  end
end
