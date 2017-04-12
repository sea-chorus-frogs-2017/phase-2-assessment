class Item < ActiveRecord::Base
  belongs_to :lister, class_name: :User

  validates :name, presence: true
  validates :condition, presence: true
  validates :auction_start, presence: true
  validates :auction_end, presence: true
  validates :description, presence: true
end
