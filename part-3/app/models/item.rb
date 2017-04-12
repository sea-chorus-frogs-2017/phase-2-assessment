class Item < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :condition, presence: true
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  validates :description, presence: true

end
