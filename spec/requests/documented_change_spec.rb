require 'rails_helper'

RSpec.describe 'Requests to documented_changes/:id', type: :request do
  let(:change) { create(:documented_change) }

  describe 'HTML GET show' do
    it 'responds with an HTML 200' do
      get documented_change_path(change), as: :html
      expect(response.status).to eq 200
      expect(response.content_type).to eq 'text/html'
    end
  end

  describe 'HTML DELETE' do
    it 'deletes the Documented Change and responds with an HTML 302' do
      delete documented_change_path(change)
      expect { change.reload }.to raise_error ActiveRecord::RecordNotFound
      expect(response.status).to eq 302
      expect(response.content_type).to eq 'text/html'
    end
  end
end
