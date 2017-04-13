class Item < ActiveRecord::Base
  belongs_to :user
  has_many :bids

  validates :name, :condition, :description, presence: true

end
