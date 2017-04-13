class Auction < ActiveRecord::Base
  belongs_to :user

  validates :item, presence: true
  validates :item_condition, presence: true
  validates :auction_start, presence: true
  validates :auction_end, presence: true
end
