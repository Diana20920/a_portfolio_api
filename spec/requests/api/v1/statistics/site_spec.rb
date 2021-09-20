require 'rails_helper'

RSpec.describe 'Statistics of square footage of spaces for a site' do
  let(:entity) { FactoryBot.create(:entity) }
  let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }
  let(:site) { FactoryBot.create(:site, portfolio_id: portfolio.id) }

  before do
    FactoryBot.create_list(:space, 5, site_id: site.id)
    @all_site_spaces = site.spaces
    get "/api/v1/statistics/sites/#{site.id}"
    @parse_response = JSON.parse(response.body, symbolize_names: true)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Shows data for spaces of only one site' do
    expect(@parse_response[:site_id]).to eq(site.id)
    expect(@parse_response[:name]).to eq(site.name)
  end

  it 'Provides total square footage for a site' do
    expect(@parse_response).to have_key(:total_sqft)
  end

  it 'Provides average square footage for a site' do
    expect(@parse_response).to have_key(:average_sqft)
  end
end
