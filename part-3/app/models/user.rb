require 'bcrypt'
enable :sessions

class User < ActiveRecord::Base
  include BCrypt
  has_many :items
  has_many :bids

  validates :username, presence: true, uniqueness: true
  validates :password_hash, presence: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(input_password)
    self.password == input_password
  end

  def has_already_bid?(item)
    bids = Bid.where("bids.user_id = ?", self.id)
    return nil if bids.empty?
    bids
  end
end
