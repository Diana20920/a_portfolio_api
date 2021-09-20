require 'rails_helper'

RSpec.describe 'Detailed information about a single porfolio' do
  let(:entity) { FactoryBot.create(:entity) }

  before do
    FactoryBot.create_list(:portfolio, 3, entity_id: entity.id)
    @single_portfolio = Portfolio.second
    get "/api/v1/portfolios/#{@single_portfolio.id}"
    @parse_response = JSON.parse(response.body, symbolize_names: true)
    @portfolio_object = @parse_response[:data]
  end

  it 'Verify count of portfolios in system' do
    expect(Portfolio.all.count).to eq(3)
  end

  it 'Response with :ok status' do
    expect(response).to have_http_status(:ok)
  end

  it 'Response with one portfolio' do
    expect(@parse_response[:data]).to be_a(Hash)
  end

  it 'Portfolio id' do
    expect(@portfolio_object[:id]).to eq("#{@single_portfolio.id}")
  end

  it 'Portfolio region' do
    expect(@portfolio_object[:attributes][:region]).to eq(@single_portfolio.region)
  end

  it 'Portfolio with its entity_id' do
    expect(@portfolio_object[:attributes][:entity_id]).to eq(entity.id)
  end
end
