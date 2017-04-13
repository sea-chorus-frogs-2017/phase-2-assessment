class Auction < ActiveRecord::Base
  belongs_to :auctioner, class_name: "User"
  has_many :bids, foreign_key: :auction_id
  validates :name, :condition, :starts_at, :ends_at, :description, :auctioner_id, presence: true
end

