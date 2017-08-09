require 'rails_helper'

RSpec.describe DocumentedChange, type: :model do
  it { is_expected.to validate_length_of(:summary).is_at_most(255) }
end
