class User < ActiveRecord::Base
  
  #for authentication methods via bcrypt
  has_secure_password
  validates :email, uniqueness: true
  # def initialize (password, password_confirmation)
  #   @password = password
  #   @password_confirmation = password_confirmation
end
