class Question < ApplicationRecord
  belongs_to :anamnesi

  validates :description, presence: true
end
