require 'rails_helper'

RSpec.describe Site do
  describe 'relationships' do
    it { should belong_to :portfolio }
    it { should have_many :spaces }
  end

  describe 'validations' do
    it { should validate_presence_of :spaces_available }
    it { should validate_presence_of :street_address }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :zip_code }
  end

  describe 'instance methods' do
    let(:entity) { FactoryBot.create(:entity) }
    let(:portfolio) { FactoryBot.create(:portfolio, entity_id: entity.id) }
    let(:site) { FactoryBot.create(:site, portfolio_id: portfolio.id) }

    before do
      @space1 = FactoryBot.create(:space, site_id: site.id, square_footage: 100.5)
      @space2 = FactoryBot.create(:space, site_id: site.id, square_footage: 150.85)
      @space3 = FactoryBot.create(:space, site_id: site.id, square_footage: 400.10)
    end

    describe '#site_total_sqft' do
      it 'returns the total square footage for all spaces belonging to a site' do
        expect(site.site_total_sqft(site.id)).to eq(651.45)
      end
    end

    describe '#site_average_sqft' do
      it 'returns the average square footage for all spaces belonging to a site' do
        expect(site.site_average_sqft(site.id)).to eq(217.15)
      end
    end

    describe '#sqft_statistics' do
      let(:expected_results) { site.sqft_statistics(site.id) }
      let(:spaces_count) { site.spaces.count }
      it 'return a hash with the site ID' do
        expect(expected_results[:site_id]).to eq(site.id)
      end

      it 'returns a hash with the site name' do
        expect(expected_results[:name]).to eq(site.name)
      end

      it 'returns a hash with the count of total spaces for a site' do
        expect(expected_results[:total_spaces]).to eq(spaces_count)
      end

      it 'returns a hash with the total square footage of a site' do
        expect(expected_results[:total_sqft]).to eq(651.45)
      end

      it 'returns a hash with the average square footage of a site' do
        expect(expected_results[:average_sqft]).to eq(217.15)
      end
    end
  end
end
