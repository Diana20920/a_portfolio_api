require 'rails_helper'

RSpec.describe Portfolio do
  describe 'relationships' do
    it { should belong_to :entity }
    it { should have_many :sites }
  end

  describe 'validations' do
    it { should validate_presence_of :region }
  end
end
