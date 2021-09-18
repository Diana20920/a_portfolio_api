require 'rails_helper'

RSpec.describe Site do
  describe 'relationships' do
    it { should belong_to :portfolio }
    it { should have_many :spaces }
  end
end
