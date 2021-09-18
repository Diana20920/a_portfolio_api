require 'rails_helper'

RSpec.describe Entity do
  describe 'relationships' do
    it { should have_many :portfolios }
  end

  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :address }
  end
end
