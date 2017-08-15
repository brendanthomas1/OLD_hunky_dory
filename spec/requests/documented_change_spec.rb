require 'rails_helper'

RSpec.describe 'Requests to documented_changes/:id', type: :request do
  let(:doc_change) { create(:documented_change) }
  let(:url) { documented_change_path(doc_change) }

  describe 'HTML GET show' do
    it 'responds with an HTML 200' do
      get url, as: :html
      expect(response.status).to eq 200
      expect(response.content_type).to eq 'text/html'
    end
  end

  describe 'HTML PUT' do
    let(:params) { { documented_change: { summary: 'Updated' } } }

    it 'responds with an HTML 302' do
      put url, params: params, as: :html

      expect(doc_change.reload.summary)
        .to eq params[:documented_change][:summary]
      expect(response.content_type).to eq 'text/html'
      expect(response.status).to eq 302
    end

    context 'with invalid params' do
      let(:params) { { documented_change: { summary: nil } } }

      it 'does not update the documented change' do
        expect { put url, params: params, as: :html }
          .not_to(change { doc_change })
      end
    end
  end

  describe 'HTML DELETE' do
    it 'deletes the Documented Change and responds with an HTML 302' do
      delete url
      expect { doc_change.reload }.to raise_error ActiveRecord::RecordNotFound
      expect(response.status).to eq 302
      expect(response.content_type).to eq 'text/html'
    end
  end
end
