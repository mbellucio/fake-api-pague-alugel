require 'rails_helper'

describe 'Condo API' do
  describe 'GET /api/v1/condos' do
    it 'successfully' do
      Condo.create!(name: 'Residencial Vista Alegre', city: 'São Paulo')
      Condo.create!(name: 'Condomínio Monte Belo', city: 'Rio de Janeiro')
      Condo.create!(name: 'Residencial Parque Verde', city: 'Belo Horizonte')

      get '/api/v1/condos'

      expect(response.status).to eq 200
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq 3
      expect(json_response[0]['name']).to eq 'Residencial Vista Alegre'
      expect(json_response[1]['name']).to eq 'Condomínio Monte Belo'
      expect(json_response[2]['name']).to eq 'Residencial Parque Verde'
    end
  end
end
