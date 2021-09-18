require 'rails_helper'

RSpec.describe Site do
  describe 'relationships' do
    it { should belong_to :portfolio }
    it { should have_many :spaces }
  end

  describe 'validations' do
    it { should validate_presence_of :spaces_available }
    it { should validate_presence_of :total_sqft }
    it { should validate_presence_of :street_address }
    it { should validate_presence_of :city }
    it { should validate_presence_of :state }
    it { should validate_presence_of :zip_code }
  end
end
