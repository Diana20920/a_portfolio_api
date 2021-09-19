require 'rails_helper'

RSpec.describe 'List of all portfolios in the system' do
  let(:entity) { FactoryBot.create(:entity) }

  before do
    @list_of_portfolios = FactoryBot.create_list(:portfolio, 9, entity_id: entity.id)
    get '/api/v1/portfolios'
    @parse_response = JSON.parse(response.body, symbolize_names: true)
    @portfolio_object = @parse_response[:data][0]
  end

  it 'Verify count of portfolios in system' do
    expect(@list_of_portfolios.size).to eq(9)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Response contains all portfolios' do
    expect(@parse_response[:data].size).to eq(9)
  end

  it 'Portfolio object keys' do
    expect(@portfolio_object.keys.size).to eq(3)
  end

  it 'Portfolio object has id, type, and attributes' do
    expect(@portfolio_object).to have_key(:id)
    expect(@portfolio_object).to have_key(:type)
    expect(@portfolio_object).to have_key(:attributes)
  end

  it 'Portfolio objects have attributes' do
    expect(@portfolio_object[:attributes]).to have_key(:region)
  end
end
