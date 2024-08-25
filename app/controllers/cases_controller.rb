class CasesController < ApplicationController
  respond_to :json

  def all_cases
    render json: {
      status: {
        data: {
          user: RecordSerializer.new(User.first).serializable_hash[:data][:attributes]
        }
      }
    }, status: :ok
  end

end