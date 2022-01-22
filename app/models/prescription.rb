class Prescription < ApplicationRecord
  belongs_to :consultation

  validates :description, presence: true
end
