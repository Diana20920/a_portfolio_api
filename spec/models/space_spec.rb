require 'rails_helper'

RSpec.describe Space do
  describe 'relationships' do
    it { should belong_to :site }
  end

  describe 'validations' do
    it { should validate_presence_of :category }
    it { should validate_presence_of :vacant }
    it { should validate_presence_of :square_footage }
  end
end
