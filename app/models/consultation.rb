class Consultation < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  has_one :anamnesis_consultation
  has_one :prescription

  validates :consultation_date,
    timeliness: { after: -> { Date.current }, type: :date, after_message: 'Data inválida' }

  before_create :generate_google_meet_link

  private

  def generate_google_meet_link
    # hotfix
    self.link = 'https://meet.google.com/ybh-rvfi-pux'
  end
end
