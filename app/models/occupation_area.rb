class OccupationArea < ApplicationRecord
  has_many :anamnesis
  has_many :doctors

  validates :description, presence: true
end
