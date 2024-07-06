require 'rails_helper'

describe 'Common Area' do
  describe 'GET /api/v1/condos/:condo_id/common_areas/' do
    it 'successfully' do
      condo = Condo.create!(name: 'Residencial Vista Alegre', city: 'São Paulo')

      CommonArea.create!(name: 'Piscina - Vista Alegre', description: 'Piscina grande cabe até golfinhos',
                         max_occupancy: 50, rules: 'Não pode comer na área da piscina', condo_id: 1)
      CommonArea.create!(name: 'Academia - Vista Alegre',
                         description: 'Uma academia raíz com ventilador apenas para os marombas', max_occupancy: 20,
                         rules: 'Não pode ser frango', condo_id: 1)
      CommonArea.create!(name: 'Salão de Festa - Vista Alegre', description: 'Salão preparado para grandes festas',
                         max_occupancy: 80, rules: 'Som alto somente até as 22h', condo_id: 1)

      get "/api/v1/condos/#{condo.id}/common_areas"

      expect(response.status).to eq 200
      json_response = JSON.parse(response.body)
      expect(json_response.length).to eq 3
      expect(json_response[0]['name']).to eq 'Piscina - Vista Alegre'
      expect(json_response[1]['name']).to eq 'Academia - Vista Alegre'
      expect(json_response[2]['name']).to eq 'Salão de Festa - Vista Alegre'
    end

    it 'if there is none' do
      Condo.create!(name: 'Residencial Vista Alegre', city: 'São Paulo')

      get '/api/v1/condos/1/common_areas'

      expect(response.status).to eq 200
      expect(response.body).to eq '[]'
    end
  end

  describe 'GET /api/v1/condos/:condo_id/common_areas/:id' do
    it 'successfully' do
      condo = Condo.create!(name: 'Residencial Vista Alegre', city: 'São Paulo')

      common_area = CommonArea.create!(name: 'Piscina - Vista Alegre', description: 'Piscina grande cabe até golfinhos',
                                       max_occupancy: 50, rules: 'Não pode comer na área da piscina', condo_id: 1)

      get "/api/v1/condos/#{condo.id}/common_areas/#{common_area.id}"

      expect(response.status).to eq 200
      json_response = JSON.parse(response.body)
      expect(json_response['name']).to eq 'Piscina - Vista Alegre'
      expect(json_response['description']).to eq 'Piscina grande cabe até golfinhos'
      expect(json_response['max_occupancy']).to eq 50
      expect(json_response['rules']).to eq 'Não pode comer na área da piscina'
    end

    it 'there is no common area' do
      condo = Condo.create!(name: 'Residencial Vista Alegre', city: 'São Paulo')

      get "/api/v1/condos/#{condo.id}/common_areas/55"

      expect(response.status).to eq 404
    end
  end
end
