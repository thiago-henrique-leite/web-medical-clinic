class Speciality < ApplicationRecord
  has_many :anamnesis
  has_many :doctors

  validates :name, presence: true
  validates :description, presence: true
end
