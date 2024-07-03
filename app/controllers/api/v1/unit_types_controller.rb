class Api::V1::UnitTypesController < Api::V1::ApiController
  def index
    data = File.read(Rails.root.join('app/json/unit_types.json'))
    render status: 200, json: data
  end

  def show
    data = File.read(Rails.root.join('app/json/unit_type.json'))
    render status: 200, json: data
  end
end
