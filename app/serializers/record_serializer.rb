class RecordSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :first_name, :last_name, :phone, :cases

  attribute :cases do |object|
    CaseSerializer.new(object.cases).serializable_hash[:data].map { |case_datum| case_datum[:attributes]}
  end
end
