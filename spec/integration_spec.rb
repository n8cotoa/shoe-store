require 'spec_helper'

context 'store creation path' do
  it 'will fill in form and new store will display' do
    visit '/'
    fill_in('store_name', :with => 'Nike')
    click_button('Add Store')
    expect(page).to have_content('Nike')
  end
end
