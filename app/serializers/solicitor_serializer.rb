class SolicitorSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :first_name, :last_name, :phone
end
