require 'rails_helper'

RSpec.describe 'List of spaces for a given site' do
  let(:entity) { FactoryBot.create(:entity) }
  let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }
  let(:site) { FactoryBot.create(:site, portfolio_id: portfolio.id) }

  before do
    @spaces = FactoryBot.create_list(:space, 5, site_id: site.id)
    @all_site_spaces = site.spaces
    get "/api/v1/portfolios/#{portfolio.id}/sites/#{site.id}/spaces"
    @parse_response = JSON.parse(response.body, symbolize_names: true)
    @space_object = @parse_response[:data][0]
  end

  it 'Verify count of spaces for one site' do
    expect(@all_site_spaces.count).to eq(5)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Response contains all spaces' do
    expect(@parse_response[:data].count).to eq(5)
  end

  it 'Space object keys' do
    expect(@space_object.keys.size).to eq(3)
  end

  it 'Space object has id, type, and attributes' do
    expect(@space_object).to have_key(:id)
    expect(@space_object).to have_key(:type)
    expect(@space_object).to have_key(:attributes)
  end

  it 'Space objects have category attribute' do
    expect(@space_object[:attributes]).to have_key(:category)
  end

  it 'Space objects have site_id attribute' do
    expect(@space_object[:attributes]).to have_key(:site_id)
    expect(@space_object[:attributes][:site_id]).to eq(site.id)
  end
end
