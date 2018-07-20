require 'spec_helper'

describe(Brand) do
  it {should have_and_belong_to_many :stores}

  it 'should not save blank entries' do
    brand_test = Brand.create({:name => "", :price => ""})
    another_brand = Brand.create({:name => "Jordans", :price => "$50.00"})
    expect(Brand.all).to(eq([another_brand]))
  end
end
