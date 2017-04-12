class Bid < ActiveRecord::Base
  belongs_to :bidder, class_name: :User
  belongs_to :item

  validates_numericality_of :amount, greater_than: 0
end
