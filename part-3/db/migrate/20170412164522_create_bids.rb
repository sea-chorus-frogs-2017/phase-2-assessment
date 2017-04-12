class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :bidder_id
      t.integer :item_id
      t.integer :amount, null: false
      t.timestamps null: false
    end
  end
end
