class Item < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name,{message: "A name is required."}
  validates_presence_of :condition,{message: "A condition is required."}
  validates_presence_of :starts,{message: "A start time is required."}
  validates_presence_of :ends,{message: "An end time is required."}
  validates_presence_of :description,{message: "A description is required."}


end
