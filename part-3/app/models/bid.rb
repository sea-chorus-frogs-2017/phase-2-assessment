class Bid < ActiveRecord::Base
  belongs_to :bidder, class_name: "User"
  belongs_to :auction_item, class_name: "Auction"

  validates :amount, presence: true
  validate :bid_cant_be_less_than_1

  def bid_cant_be_less_than_1
    if self.amount <= 0.to_s
      errors.add(:amount, "must be greater than $0, you cheapo.")
    end
  end
end
