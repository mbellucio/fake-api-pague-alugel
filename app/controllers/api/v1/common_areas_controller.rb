class Api::V1::CommonAreasController < Api::V1::ApiController
  def index
    data = CommonArea.all
    render status: 200, json: data.as_json(except: [:created_at, :updated_at])
  end

  def show
    data = CommonArea.find_by!(id: params[:id])
    render status: 200, json: data.as_json(except: [:created_at, :updated_at])
  rescue
    render status: 404
  end
end
