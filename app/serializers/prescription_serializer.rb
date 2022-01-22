class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :consultation
end
