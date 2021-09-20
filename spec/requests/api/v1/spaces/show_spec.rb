require 'rails_helper'

RSpec.describe 'Detailed information about a single space' do
  let(:entity) { FactoryBot.create(:entity) }
  let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }
  let(:site) { FactoryBot.create(:site, portfolio_id: portfolio.id) }

  before do
    FactoryBot.create_list(:space, 2, site_id: site.id)
    @single_space = site.spaces.first
    get "/api/v1/portfolios/#{portfolio.id}/sites/#{site.id}/spaces/#{@single_space.id}"
    @parse_response = JSON.parse(response.body, symbolize_names: true)
    @space_object = @parse_response[:data]
  end

  it 'Verify count of spaces in system' do
    expect(Space.all.count).to eq(2)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Response with one space' do
    expect(@parse_response[:data]).to be_a(Hash)
  end

  it 'Space id' do
    expect(@space_object[:id]).to eq("#{@single_space.id}")
  end

  it 'Space category' do
    expect(@space_object[:attributes][:category]).to eq(@single_space.category)
  end

  it 'Space vacant' do
    expect(@space_object[:attributes][:vacant]).to eq(@single_space.vacant)
  end

  it 'Space square_footage' do
    expect(@space_object[:attributes][:square_footage]).to eq(@single_space.square_footage)
  end

  it 'Space dollar_per_sqft' do
    expect(@space_object[:attributes][:dollar_per_sqft]).to eq("#{@single_space.dollar_per_sqft}")
  end

  it 'Space site_id' do
    expect(@space_object[:attributes][:site_id]).to eq(@single_space.site_id)
  end
end
