class User < ActiveRecord::Base
  
  #for authentication methods via bcrypt
  has_secure_password

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :password, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true


  # extend AutoStripAttributes
  # auto_strip_attributes :email
  def self.authenticate_with_credentials(email, password)
    # @user = User.find_by_email('lower(email) = ?', email.downcase)
    @user = User.where('lower(TRIM(email)) = ?', email.downcase.strip).first
    if @user
      @user.email = @user.email.downcase.strip
    end
    
    if @user && @user.authenticate(password)
      return @user
    else
      return nil
    end
  end

end
# Product.where('lower(name) = ?', name.downcase)