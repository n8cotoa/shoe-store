require 'spec_helper'

describe(Store) do
  it {should have_and_belong_to_many :brands}
  it {should validate_uniqueness_of :name}
  it {should validate_presence_of :name}
  it {should validate_length_of :name}

  it('changes the name to all words having first letter uppercase') do
    test_store = Store.create({:name => 'test store'})
    expect(test_store.name).to(eq('Test Store'))
  end
end
