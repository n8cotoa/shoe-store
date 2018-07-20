require("bundler/setup")
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @stores = Store.all
  @brands = Brand.all
  erb(:index)
end

post '/stores/new' do
  store_name = params.fetch('store_name')
  new_store = Store.create({:name => store_name})
  redirect back
end

post '/brands/new' do
  brand_name = params.fetch('brand_name')
  brand_price = params.fetch('brand_price')
  new_brand = Brand.create({:name => brand_name, :price => brand_price})
  redirect back
end

get '/stores/:id' do
  @store = Store.find(params.fetch(:id))
  erb(:store)
end

get '/stores/:id/edit' do
  @store = Store.find(params.fetch(:id))
  @brands = Brand.all
  erb :store_edit
end

post '/stores/:id/edit' do
  @store = Store.find(params.fetch(:id))
  @brands = Brand.all
  erb :store_edit
end

post '/stores/:id/brands/add' do
  @store = Store.find(params.fetch(:id))
  brand_ids = params.fetch("brand_ids")
  brand_ids.each do |brand_id|
    brand = Brand.find(brand_id.to_i)
    @store.brands.push(brand)
  end
  redirect back
end

delete '/stores/:id/edit' do
  @store = Store.find(params.fetch(:id))
  @store.destroy
  redirect '/'
end
