require 'bcrypt'

class User < ActiveRecord::Base
   include BCrypt

 validates :username, :email, :password_hash, presence: true
 validates :username, :email, uniqueness: true

def errors

end

 def password
   @password ||= Password.new(password_hash)
 end

 def password=(new_password)
   @password = Password.create(new_password)
   self.password_hash = @password
 end

 def self.authenticate(username, password)
   user = User.find_by(username: username)
   return nil unless user
   if user.password == password
     user
   else
     nil
   end
 end
end
