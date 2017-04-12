require 'bcrypt'

class User < ActiveRecord::Base
  validates_presence_of :username,{message: "A username is required."}
  validates_presence_of :email,{message: "An email is required."}
  validates_presence_of :password_hash,{message: "A password is required."}


  validates :username, :email, uniqueness: true, case_sensitive: false

  # users.password_hash in the database is a :string
  include BCrypt

  def password
     if (@password == "")
      @password = nil
    end
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    if(new_password == "")
      self.password_hash = nil
    else
    @password = Password.create(new_password)
    self.password_hash = @password
  end
  end

  def self.authenticate(given_email, given_password)
    user = User.find_by(email: given_email)
    if user && user.password == given_password
      user
    end
  end
end
