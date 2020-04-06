require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '#id' do
    it 'should not exist for new records' do
      @product = Product.new
      expect(@product.id).to be_nil
    end
    it 'should be nil' do
      @cat = Category.create
      # puts 'cat inside test'
      # puts @cat.inspect
      @product = Product.create(category_id: @cat.id)
      # puts 'prod inside test'
      # puts @product.inspect
      expect(@product.id).to be_nil
    end
  end
  describe 'name' do
    it 'should not exist for new records' do
      @product = Product.new
      expect(@product.name).to be_nil
    end
    it 'should match' do
      name = 'smth'
      @cat = Category.create
      @product = Product.create(name: name, category_id: @cat.id)
      puts 'prod inside test'
      puts @product.inspect
      expect(@product.name).to match(name)
    end
  end
  describe 'price' do
    it 'should not exist for new records' do
      @product = Product.new
      expect(@product.price_cents).to be_nil
    end
    it 'should match' do
      price_cents = 10;
      @cat = Category.create
      @product = Product.create(price_cents: price_cents, category_id: @cat.id)
      puts 'prod inside test'
      puts @product.inspect
      expect(@product.price_cents).to match(price_cents)
    end
  end
end
