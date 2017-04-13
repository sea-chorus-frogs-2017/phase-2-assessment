class Item < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  validates_presence_of :name, :condition, :description, :start_time, :end_time, :user_id, :bid
end





