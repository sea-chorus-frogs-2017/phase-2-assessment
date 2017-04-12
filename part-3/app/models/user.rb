require 'bcrypt'

class User < ActiveRecord::Base

  include BCrypt

  has_many :items

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  # Password validation does not prevent empty string from registering as password
  validates :password, presence: true, allow_blank: false, :length => {:minimum => 1}
  validates :password_hash, presence: true

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
