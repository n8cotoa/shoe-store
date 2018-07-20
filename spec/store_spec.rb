require 'spec_helper'

describe(Store) do
  it {should have_and_belong_to_many :brands}

  it 'should not save blank entries' do
    store_test = Store.create({:name => ""})
    another_store = Store.create({:name => "Nike"})
    expect(Store.all).to(eq([another_store]))
  end
end
