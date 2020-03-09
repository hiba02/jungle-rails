# rails_helper refers all modles of object in the project folder
require "rails_helper"

RSpec.describe Product, type: :model do

  subject {
    Product.new(name: "Anything",
                description: "Lorem ipsum",
                image: "image",
                price: 1,
                quantity: 1,
                category: Category.new
                # category should be instace: Category(#30257260) expected
                        )
  }

  # it "is valid with a name" do
  #   @product = Product.new(name: "Anything", price: 1, quantity: 1, category: Category.new)
  #   product_name = @product.name
  #   expect(product_name).to be_valid
  # end

  it "is valid with a name" do
    @product = Product.new(name: "Anything")
    subject.name = "Anything"
    expect(subject).to be_valid
  end

  it "is valid with a description" do
    subject.description = "Lorem ipsum"
    expect(subject).to be_valid
  end

  it "is valid with a price" do
    subject.price = 1
    expect(subject).to be_valid
  end

  it "is valid with a quantity" do
    subject.quantity = 1
    expect(subject).to be_valid
  end

  it "is valid with a category" do
    subject.category = Category.new
    expect(subject).to be_valid
  end
end