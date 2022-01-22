class ConsultationSerializer < ActiveModel::Serializer
  attributes :id, :consultation_date, :link
  has_one :patient
  has_one :doctor
end
