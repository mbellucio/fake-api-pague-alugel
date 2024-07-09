class Api::V1::PropertyOwnersController < Api::V1::ApiController
  def search
    if PropertyOwner.find_by(document_number: params[:cpf])
      render status: 200
    else
      render status: 404
    end
  end
end
