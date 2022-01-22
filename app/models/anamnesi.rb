class Anamnesi < ApplicationRecord
  belongs_to :occupation_area
  has_many :questions
  has_many :anamnesis_consultation
end
