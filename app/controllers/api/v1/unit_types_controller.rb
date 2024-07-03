class Api::V1::UnitTypesController < Api::V1::ApiController
  def index
    data = UnitType.all
    render status: 200, json: data.as_json(except: [:created_at, :updated_at])
  end

  def show
    begin
      data = UnitType.find_by!(id: params[:id])
      render status: 200, json: data.as_json(except: [:created_at, :updated_at])
    rescue
      return render status: 404
    end
  end
end
