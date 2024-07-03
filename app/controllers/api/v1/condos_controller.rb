class Api::V1::CondosController < Api::V1::ApiController
  def index
    data = File.read(Rails.root.join('app/json/condos.json'))
    render status: 200, json: data
  end

  def show
    data = File.read(Rails.root.join('app/json/condo.json'))
    render status: 200, json: data
  end
end
