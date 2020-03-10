require "rails_helper"

RSpec.describe User, type: :model do

  # subject {
  #   User.new(name: "Anything",
  #               email: "a@a.com",
  #               password: 111,
  #               password_confirmation: 111
  #               )
  # }

  it "password match with a password_confirmation" do
    pwd = User.new(password: 111)
    # pwd = user1.password
    # pwd = subject.password
    # pwd_confirm = subject.password_confirmation
    # pwd = subject.password
    expect(pwd).to eql(111)
   
  end

end