require 'rails_helper'

RSpec.feature "Visitor navigates to product detail", type: :feature, js: true do


  before :each do
    # User.new(last_name:"a", first_name:"b", email:"   A2@A.com   ",password:"111", password_confirmation:"111").save

    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "users can click the 'Add to Cart' button" do
    
    # fill form for login
    visit '/login'
    
    
    within '.form_class' do

      fill_in 'email', with: 'a1@a'
      fill_in 'password', with: '111'
      click_button 'Submit'

    end
    save_screenshot('cart0.png')

    # go to home page
    visit root_path
    save_screenshot('cart1.png')

    
    # click Add button to increase the cart number
    click_button('Add', match: :first)

    save_screenshot('cart3.png')


  end

end