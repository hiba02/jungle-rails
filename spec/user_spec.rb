require "rails_helper"

RSpec.describe User, type: :model do

  subject {
    User.new(name: "John",
              email: "a@a.com",
              password: "111",
              password_confirmation: "111"
                        )
  }

  it "must be created with a password and password_confirmation fields" do
    pwd = subject.password
    pwd_confirm = subject.password_confirmation
    expect(pwd).to eq(pwd_confirm) 
  end

  it { should validate_uniqueness_of(:email) }
  
end