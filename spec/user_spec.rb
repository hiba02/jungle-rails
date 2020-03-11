require "rails_helper"

RSpec.describe User, type: :model do


  it "password match with a password 111" do

    @user = User.new(name:"a1",email:"a1@a.com",password:"111", password_confirmation:"111") 
    
    pwd = @user.password

    expect(pwd).to eq("111")
   
  end

  before do
    @user11 = User.new(name:"a1",email:"a3@a.com",password:"111", password_confirmation:"111")
  end

  it "should unique email" do 
  # { should validate_uniqueness_of(:email) }
    should validate_uniqueness_of(:email)
  end

  it "minimun length of password is 3"do
    should validate_length_of(:password).
      is_at_least(3)

  end



  it ".authenticate_with_credentials" do
    @user1 = User.authenticate_with_credentials("a1@a.com", "")
    # email = @user1.email
    expect(@user1).to be_nil
  end

  it "validation of a few spaces before and/or after their email address" do 
    User.new(name:"a2",email:"   a2@a.com   ",password:"111", password_confirmation:"111").save
    @user2 = User.authenticate_with_credentials(" a2@a.com ", "111")
    email = @user2.email
    expect(email).to eq("a2@a.com")
  end

  it "validation of allowing uppercase email address" do 
    @user3 = User.new(name:"a3",email:"   A2@A.com   ",password:"111", password_confirmation:"111").save
    @user2 = User.authenticate_with_credentials(" A2@A.com ", "111")
    email = @user2.email
    expect(email).to eq("a2@a.com")
  end

end