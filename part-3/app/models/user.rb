require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates :email, :username, uniqueness: true
  validates :email, :username, :password_hash, presence: true

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
end
