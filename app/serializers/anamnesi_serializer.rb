class AnamnesiSerializer < ActiveModel::Serializer
  attributes :id
  has_one :occupation_area
end
