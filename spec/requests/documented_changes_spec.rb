require 'rails_helper'

RSpec.describe 'Requests to documented_changes', type: :request do
  describe 'HTML GET index' do
    it 'responds with an HTML 200' do
      get documented_changes_path, as: :html
      expect(response.status).to eq 200
      expect(response.content_type).to eq 'text/html'
    end
  end

  describe 'HTML GET new' do
    it 'responds with an HTML 200' do
      get new_documented_change_path, as: :html
      expect(response.status).to eq 200
      expect(response.content_type).to eq 'text/html'
    end
  end

  describe 'HTML POST create' do
    let(:params) { { documented_change: { summary: 'foo', text: 'bar' } } }

    it 'creates a new documented change and responds with an HTML 302' do
      expect { post documented_changes_path, as: :html, params: params }
        .to change { DocumentedChange.count }.by 1
      expect(response.content_type).to eq 'text/html'
      expect(response.status).to eq 302
    end
  end
end
