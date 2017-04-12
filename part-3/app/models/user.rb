require 'bcrypt'

class User < ActiveRecord::Base
  validates :username, :email, :password_hash, presence: true
  validates :username, :email, uniqueness: true, case_sensitive: false

  # users.password_hash in the database is a :string
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(given_email, given_password)
    user = User.find_by(email: given_email)
    if user && user.password == given_password
      user
    end
  end
end
