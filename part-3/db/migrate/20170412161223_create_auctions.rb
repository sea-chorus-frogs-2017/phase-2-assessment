class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
      t.string :item, null: false
      t.string :item_condition, null: false
      t.datetime :auction_start, null: false
      t.datetime :auction_end, null: false

      t.timestamps null: false
    end
  end
end
