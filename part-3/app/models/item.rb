class Item < ActiveRecord::Base
  validates :name, :condition, :description, presence: true

end
