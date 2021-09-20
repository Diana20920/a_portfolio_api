require 'rails_helper'

RSpec.describe Portfolio do
  describe 'relationships' do
    it { should belong_to :entity }
    it { should have_many :sites }
    it { should have_many(:spaces).through :sites}
  end

  describe 'validations' do
    it { should validate_presence_of :region }
  end

  describe 'instance methods' do
    let(:entity) { FactoryBot.create(:entity) }
    let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }
    let(:site1) { FactoryBot.create(:site, portfolio_id: portfolio.id) }
    let(:site2) { FactoryBot.create(:site, portfolio_id: portfolio.id) }

    before do
      @space1 = FactoryBot.create(:space, site_id: site1.id, square_footage: 500.53)
      @space2 = FactoryBot.create(:space, site_id: site1.id, square_footage: 612.85)
      @space3 = FactoryBot.create(:space, site_id: site1.id, square_footage: 1000.42)
      @space4 = FactoryBot.create(:space, site_id: site2.id, square_footage: 2000.10)
      @space5 = FactoryBot.create(:space, site_id: site2.id, square_footage: 650.78)
      @space6 = FactoryBot.create(:space, site_id: site2.id, square_footage: 1031.90)
    end

    describe '#portfolio_total_sqft' do
      it 'returns the total square footage for all spaces belonging to a portfolio' do
        expect(portfolio.portfolio_total_sqft(portfolio.id)).to eq(5796.58)
      end
    end

    describe '#portfolio_average_sqft' do
      it 'returns the average square footage for all spaces belonging to a portfolio' do
        expect(portfolio.portfolio_average_sqft(portfolio.id)).to eq(966.1)
      end
    end

    describe '#sqft_statistics' do
      let(:expected_results) { portfolio.sqft_statistics(portfolio.id) }
      let(:spaces_count) { portfolio.spaces.count }
      it 'return a hash with the portfolio ID' do
        expect(expected_results[:portfolio_id]).to eq(portfolio.id)
      end

      it 'returns a hash with the portfolio region' do
        expect(expected_results[:region]).to eq(portfolio.region)
      end

      it 'returns a hash with the count of total spaces for a portfolio' do
        expect(expected_results[:total_spaces]).to eq(spaces_count)
      end

      it 'returns a hash with the total square footage of a portfolio' do
        expect(expected_results[:total_sqft]).to eq(5796.58)
      end

      it 'returns a hash with the average square footage of a portfolio' do
        expect(expected_results[:average_sqft]).to eq(966.1)
      end
    end
  end
end
