class Anamnesi < ApplicationRecord
  belongs_to :speciality
  has_many :questions
  has_many :anamnesis_consultation
end
