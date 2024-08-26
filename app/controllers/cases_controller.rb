class CasesController < ApplicationController
  respond_to :json

  def all_cases
    render json: {
      status: {
        data: {
          cases: CaseSerializer.new(User.first.cases).serializable_hash[:data].map { |case_datum| case_datum[:attributes]}
        }
      }
    }, status: :ok
  end

end