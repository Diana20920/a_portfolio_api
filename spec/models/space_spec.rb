require 'rails_helper'

RSpec.describe Space do
  describe 'relationships' do
    it { should belong_to :site }
  end
end
