require 'rails_helper'

RSpec.describe Product, type: :model do
  # describe 'Validations' do
  it 'is valid with valid attributes' do
    category = Category.new(name: "test_cat")
    test_product = Product.new(name: 'chaos bush', quantity: 23, category: category, price: 124.99 )
    expect(test_product).to be_valid
  end


  it 'is not valid without a name' do 
    category = Category.new(name: "test_cat")
    test_product = Product.new(quantity: 23, category: category, price: 124.99 )
    expect(test_product).not_to be_valid
  end

  it 'is not valid without a quantity' do 
    category = Category.new(name: "test_cat")
    test_product = Product.new(name: 'chaos bush', category: category, price: 124.99 )
    expect(test_product).not_to be_valid
  end


  it 'is not valid without a category' do
    test_product = Product.new(name: 'chaos bush', quantity: 23, price: 124.99 )
    expect(test_product).not_to be_valid
  end


  it 'is not valid without a price' do
    category = Category.new(name: "test_cat")
    test_product = Product.new(name: 'chaos bush', quantity: 23, category: category)
    expect(test_product).not_to be_valid
  end

end
