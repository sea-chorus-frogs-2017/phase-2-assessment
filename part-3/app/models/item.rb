class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :condition, presence: true
  validates :auction_start, presence: true
  validates :auction_end, presence: true
  validates :description, presence: true
end
