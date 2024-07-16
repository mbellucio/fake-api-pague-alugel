class Api::V1::UnitsController < Api::V1::ApiController
  def index
    data = Unit.all
    render status: 200, json: data.as_json(except: %i[created_at updated_at])
  end

  def show
    data = Unit.find_by!(id: params[:id])
    render status: 200, json: data.as_json(except: %i[created_at updated_at])
  rescue StandardError
    render status: 404
  end

  def owner_properties
    units = get_owner_units(params[:registration_number])
    unit = PropertyOwner.find_by(document_number: params[:registration_number]).units.first

    render status: :ok, json: {
      resident: { name: unit.owner_name, owner_id: unit.owner_id },
      properties: units
    }
  end

  private

  def get_owner_units(cpf)
    PropertyOwner.find_by(document_number: cpf).units.map do |unit|
      {
        id: unit.id,
        area: unit.area,
        floor: unit.floor,
        number: unit.number,
        unit_type_id: unit.unit_type_id,
        condo_name: unit.condo_name,
        tenant_id: unit.tenant_id,
        description: unit.description
      }
    end
  end
end
