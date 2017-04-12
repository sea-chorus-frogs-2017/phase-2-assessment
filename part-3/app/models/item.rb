class Item < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :condition, :starts_at, :end_at
end
