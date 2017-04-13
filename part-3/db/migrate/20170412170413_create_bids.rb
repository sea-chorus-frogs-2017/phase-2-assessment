class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :amount
      t.integer :bidder_id
      t.integer :auction_id
    end
  end
end
