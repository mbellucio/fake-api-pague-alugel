class Api::V1::CondosController < Api::V1::ApiController
  def index
    data = Condo.all
    render status: 200, json: data.as_json(except: [:created_at, :updated_at])
  end

  def show
    data = Condo.find(params[:id])
    render status: 200, json: data.as_json(except: [:created_at, :updated_at])
  rescue ActiveRecord::RecordNotFound
    render status: 404
  rescue StandardError
    render status: 500
  end
end
