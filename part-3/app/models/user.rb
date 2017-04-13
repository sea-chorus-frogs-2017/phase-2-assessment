require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :auctions, foreign_key: :auctioner_id
  has_many :bids, foreign_key: :bidder_id

  validates :email, :username, uniqueness: true
  validates :email, :username, :password_hash, presence: true
  validate :password_cant_be_blank

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(given_email, given_password)
    user = User.find_by(email: given_email)
    return user if user && (user.password == given_password)
  end

  def password_cant_be_blank
    if self.password == nil
      errors.add(:password, "can't be blank")
    end
  end
end
