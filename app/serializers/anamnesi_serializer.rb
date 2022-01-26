class AnamnesiSerializer < ActiveModel::Serializer
  attributes :id
  has_one :speciality
end
