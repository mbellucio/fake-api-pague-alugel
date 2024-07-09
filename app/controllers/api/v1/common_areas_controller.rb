class Api::V1::CommonAreasController < Api::V1::ApiController
  def index
    data = CommonArea.where(condo_id: params[:condo_id])
    render status: 200, json: data.as_json(except: %i[created_at updated_at])
  end

  def show
    data = CommonArea.find(params[:id])
    render status: 200, json: data.as_json(except: %i[created_at updated_at])
  rescue ActiveRecord::RecordNotFound
    render status: 404
  rescue StandardError
    render status: 500
  end
end
