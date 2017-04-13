class Bid < ActiveRecord::Base
  belongs_to :bidder, class_name: "User"
  belongs_to :auction_item, class_name: "Auction"

  validates :amount, presence: true
end
