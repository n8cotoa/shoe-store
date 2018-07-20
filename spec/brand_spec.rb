require 'spec_helper'

describe(Brand) do
  it {should have_and_belong_to_many :stores}
  it {should validate_uniqueness_of :name}
  it {should validate_presence_of :name}
  it {should validate_presence_of :price}
  it {should validate_length_of :name}
end
