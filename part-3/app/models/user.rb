require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :listed_items, foreign_key: :lister_id, class_name: :Item

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate?(password_input)
    self.password == password_input
  end
end
