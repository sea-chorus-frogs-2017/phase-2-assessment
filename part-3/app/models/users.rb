class Users < ActiveRecord::Base
  validates_presence_of :email, { message: "An email is required." }
  validates_presence_of :username, { message: "A username is required." }
  validates_presence_of :password, { message: "A password is required." }
  validates :email, uniqueness: { case_sensitive: false }, message: "That email is already registered"
  validates :username, uniqueness: { case_sensitive: false }, message: "That username is already registered"
end
