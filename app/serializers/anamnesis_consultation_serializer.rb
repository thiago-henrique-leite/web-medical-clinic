class AnamnesisConsultationSerializer < ActiveModel::Serializer
  attributes :id, :answer
  has_one :anamnesi
  has_one :consultation
end
