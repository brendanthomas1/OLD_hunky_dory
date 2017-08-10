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
end
