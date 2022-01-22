class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :description
  has_one :anamnesi
end
