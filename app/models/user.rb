class User < ActiveRecord::Base
  
  #for authentication methods via bcrypt
  has_secure_password

end
