require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates_presence_of :email, { message: "An email is required." }
  validates_presence_of :username, { message: "A username is required." }
  validates_presence_of :password, { message: "A password is required." }
  validates :email, uniqueness: { case_sensitive: false }
  validates :username, uniqueness: { case_sensitive: false }

  has_many :auctions

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(credentials)
    user = User.find_by(email: credentials[:email])
    return user if user && user.password == credentials[:password]
    nil
  end



end
