require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe 'Validations' do
    category = Category.new(name: "Furniture")
    product = Product.new(name: "Red sofa", price: 250, quantity: 30, category: category)
  

    it "is valid with valid attributes" do
      expect(product).to be_valid
    end
  
    it "is not valid without a name" do
      product.name = nil
      expect(product).to_not be_valid
      expect(product.errors.messages[:name]).to eq ["can't be blank"]
    end

    it "is not valid without a price" do
      product.price_cents = nil
      expect(product).to_not be_valid
      expect(product.errors.messages[:price]).to eq ["is not a number", "can't be blank"]

    end

    it "is not valid without a quantity" do
      product.quantity = nil
      expect(product).to_not be_valid
      expect(product.errors.messages[:quantity]).to eq ["can't be blank"]
    end

    it "is not valid without a category" do
      product.category = nil
      expect(product).to_not be_valid
      expect(product.errors.messages[:category]).to eq ["can't be blank"]
    end

  end 

end