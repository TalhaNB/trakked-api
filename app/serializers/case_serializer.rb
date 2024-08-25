class CaseSerializer
  include JSONAPI::Serializer
  attributes :id, :case_number, :status, :status_text, :description, :client_id, :solicitor_id

  attribute :solicitor do |current_case|
    SolicitorSerializer.new(current_case.solicitor).serializable_hash[:data][:attributes]
  end
  attribute :client do |current_case|
    SolicitorSerializer.new(current_case.client).serializable_hash[:data][:attributes]
  end
end
