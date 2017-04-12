require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  validates_presence_of :username, :email

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(input_password)
    if self.password == input_password
      self
    else
      nil
    end
  end

end
