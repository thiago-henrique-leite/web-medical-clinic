class AnamnesisConsultation < ApplicationRecord
  belongs_to :anamnesi
  belongs_to :consultation

  validates :answer, presence: true, allow_blank: true, allow_nil: true
end
