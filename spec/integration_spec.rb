require 'spec_helper'

context 'store creation path' do
  it 'will fill in form and new store will display' do
    visit '/'
    fill_in('store_name', :with => 'Nike')
    click_button('Add Store')
    expect(page).to have_content('Nike')
  end
end
context 'shoe creation path' do
  it 'will fill in form and new shoe will display' do
    visit '/'
    fill_in('brand_name', :with => 'Jordans')
    fill_in('brand_price', :with => '25')
    click_button('Add Shoe')
    expect(page).to have_content('Jordans')
  end
end
context 'store edit path' do
  it 'will open individual store page' do
    visit '/'
    fill_in('store_name', :with => 'Nike')
    click_button('Add Store')
    click_link('Nike')
    expect(page).to have_content('Nike')
  end
  it 'will go to the edit page' do
    visit '/'
    fill_in('store_name', :with => 'Nike')
    click_button('Add Store')
    click_link('Nike')
    click_link('Edit')
    expect(page).to have_content('Edit Nike')
  end
  it "will update store name" do
    visit '/'
    fill_in('store_name', :with => 'Nike')
    click_button('Add Store')
    click_link('Nike')
    click_link('Edit')
    fill_in('new_store_name', :with => 'Target')
    click_button('Update')
    expect(page).to have_content("Edit Target")
  end
  it 'will delete the store' do
    visit '/'
    fill_in('store_name', :with => 'Nike')
    click_button('Add Store')
    click_link('Nike')
    click_link('Edit')
    click_button('Delete')
    expect(page).to have_no_content('Nike')
  end
end
