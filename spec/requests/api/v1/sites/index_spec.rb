require 'rails_helper'

RSpec.describe 'List of sites for a given portfolio' do
  let(:entity) { FactoryBot.create(:entity) }
  let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }

  before do
    @sites = FactoryBot.create_list(:site, 3, portfolio_id: portfolio.id, spaces_available: true)
    @all_portfolio_sites = portfolio.sites
    get "/api/v1/portfolios/#{portfolio.id}/sites"
    @parse_response = JSON.parse(response.body, symbolize_names: true)
    @site_object = @parse_response[:data][0]
  end

  it 'Verify count of sites for one portfolio' do
    expect(@all_portfolio_sites.count).to eq(3)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Response contains all sites' do
    expect(@parse_response[:data].size).to eq(3)
  end

  it 'Site object keys' do
    expect(@site_object.keys.size).to eq(3)
  end

  it 'Site object has id, type, and attributes' do
    expect(@site_object).to have_key(:id)
    expect(@site_object).to have_key(:type)
    expect(@site_object).to have_key(:attributes)
  end

  it 'Site objects have name attribute' do
    expect(@site_object[:attributes]).to have_key(:name)
  end

  it 'Site objects have portfolio_id attribute' do
    expect(@site_object[:attributes]).to have_key(:portfolio_id)
    expect(@site_object[:attributes][:portfolio_id]).to eq(portfolio.id)
  end
end
