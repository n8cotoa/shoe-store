require 'spec_helper'

describe(Brand) do
  context 'validate assocations' do
    it {should have_and_belong_to_many :stores}
  end

  context 'validates uniquenes of name'  do
    it 'wont save two entries with same name' do
      brand1 = Brand.create(:name => 'jordans', :price => 50)
      brand2 = Brand.create(:name => 'jordans', :price => 50)
      expect(Brand.all).to(eq([brand1]))
    end
  end
  context('callback for name capitalize') do
    it('changes the name to all words having first letter uppercase') do
      test_brand = Brand.create({:name => 'test brand', :price => "50.00"})
      expect(test_brand.name).to(eq('Test Brand'))
    end
  end
  context 'validate that price is above 0' do
    it 'checks if price is above zero' do
      test_brand = Brand.create({:name => 'test brand', :price => -45})
      expect(Brand.all).to(eq([]))
    end
  end
  context('callback for price format change') do
    it('changes input price to be in currenct format') do
      test_brand = Brand.create({:name => 'test brand', :price => 50})
      expect(test_brand.price).to(eq(50.00))
    end
  end
end
