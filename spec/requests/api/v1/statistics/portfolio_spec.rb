require 'rails_helper'

RSpec.describe 'Statistics of square footage of spaces for a portfolio' do
  let(:entity) { FactoryBot.create(:entity) }
  let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }
  let(:site1) { FactoryBot.create(:site, portfolio_id: portfolio.id) }
  let(:site2) { FactoryBot.create(:site, portfolio_id: portfolio.id) }

  before do
    site1_spaces = FactoryBot.create_list(:space, 5, site_id: site1.id)
    site2_spaces = FactoryBot.create_list(:space, 4, site_id: site2.id)
    @all_portfolio_spaces = portfolio.spaces
    get "/api/v1/statistics/portfolios/#{portfolio.id}"
    @parse_response = JSON.parse(response.body, symbolize_names: true)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Shows data for spaces of only one portfolio' do
    expect(@parse_response[:portfolio_id]).to eq(portfolio.id)
    expect(@parse_response[:region]).to eq(portfolio.region)
  end

  it 'Provides total square footage for a portfolio' do
    expect(@parse_response).to have_key(:total_sqft)
  end

  it 'Provides average square footage for a portfolio' do
    expect(@parse_response).to have_key(:average_sqft)
  end
end
