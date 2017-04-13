class UpdateItemsBidCountColumn < ActiveRecord::Migration
  def change
    add_column :items, :bid_count, :integer, default: 0
  end
end
