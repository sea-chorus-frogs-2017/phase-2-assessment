class Bid < ActiveRecord::Base
  belongs_to :item
  belongs_to :user

  validates :price, presence: true, numericality: { greater_than: 0 }, numericality: { only_integer: true}
end
