require 'rails_helper'

RSpec.describe 'Requests to documented_changes/:id', type: :request do
  describe 'HTML GET show' do
    let(:change) { create(:documented_change) }

    it 'responds with an HTML 200' do
      get documented_change_path(change), as: :html
      expect(response.status).to eq 200
      expect(response.content_type).to eq 'text/html'
    end
  end
end
