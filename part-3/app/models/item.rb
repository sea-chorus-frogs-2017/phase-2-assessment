class Item < ActiveRecord::Base
  belongs_to :user

  validates :name, :condition, :description, presence: true

end
