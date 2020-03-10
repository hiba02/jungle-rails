class User < ActiveRecord::Base
  
  #for authentication methods via bcrypt
  has_secure_password
  # validates :password, confirmation: true
  # validates :password_confirmation, presence: true
  # validates :name, presence: true
  # validates :eamil, presence: true
end
