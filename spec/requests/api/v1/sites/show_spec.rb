require 'rails_helper'

RSpec.describe 'Detailed information about a single site' do
  let(:entity) { FactoryBot.create(:entity) }
  let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }

  before do
    FactoryBot.create_list(:site, 4, portfolio_id: portfolio.id, spaces_available: true)
    @single_site = portfolio.sites.last
    get "/api/v1/portfolios/#{portfolio.id}/sites/#{@single_site.id}"
    @parse_response = JSON.parse(response.body, symbolize_names: true)
    @site_object = @parse_response[:data]
  end

  it 'Verify count of sites in system' do
    expect(Site.all.count).to eq(4)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Response with one site' do
    expect(@parse_response[:data]).to be_a(Hash)
  end

  it 'Site id' do
    expect(@site_object[:id]).to eq("#{@single_site.id}")
  end

  it 'Site name' do
    expect(@site_object[:attributes][:name]).to eq(@single_site.name)
  end

  it 'Site street_address' do
    expect(@site_object[:attributes][:street_address]).to eq(@single_site.street_address)
  end

  it 'Site city' do
    expect(@site_object[:attributes][:city]).to eq(@single_site.city)
  end

  it 'Site state' do
    expect(@site_object[:attributes][:state]).to eq(@single_site.state)
  end

  it 'Site zip_code' do
    expect(@site_object[:attributes][:zip_code]).to eq(@single_site.zip_code)
  end

  it 'Site spaces_available' do
    expect(@site_object[:attributes][:spaces_available]).to eq(@single_site.spaces_available)
  end

  it 'Site total_dollar_value_per_sqft' do
    expect(@site_object[:attributes][:total_dollar_value_per_sqft]).to eq("#{@single_site.total_dollar_value_per_sqft}")
  end

  it 'Site with its portfolio_id' do
    expect(@site_object[:attributes][:portfolio_id]).to eq(portfolio.id)
  end
end
