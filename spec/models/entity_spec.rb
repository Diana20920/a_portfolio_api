require 'rails_helper'

RSpec.describe Entity do
  describe 'relationships' do
    it { should have_many :portfolios }
  end
end
