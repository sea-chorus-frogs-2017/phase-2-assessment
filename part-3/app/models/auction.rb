class Auction < ActiveRecord::Base
  validates_presence_of :name, { message: "A name is required." }
  validates_presence_of :condition, { message: "The item's condition is required." }
  validates_presence_of :starts_at, { message: "The auction must have a starting time and date." }
  validates_presence_of :ends_at, { message: "The auction must have a end time and date." }
end
