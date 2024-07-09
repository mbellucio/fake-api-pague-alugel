require 'rails_helper'

describe 'Property Owner API' do
  describe 'GET /api/v1/property?:cpf' do
    it 'successfully' do
      document_number = '12312312344'
      PropertyOwner.create!(document_number:)

      get "/api/v1/property?cpf=#{document_number}"

      expect(response).to have_http_status(200)
    end

    it 'not found' do
      document_number = '12312312344'
      PropertyOwner.create!(document_number:)

      get '/api/v1/property?cpf=1234'

      expect(response).to have_http_status(404)
    end
  end
end
