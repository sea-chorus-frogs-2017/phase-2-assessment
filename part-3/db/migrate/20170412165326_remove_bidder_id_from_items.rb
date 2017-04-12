class RemoveBidderIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :bidder_id, :integer
  end
end
