class Consultation < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  has_one :anamnesis_consultation
  has_one :prescription

  validates :consultation_date,
    timeliness: { after: -> { Date.current }, type: :date, after_message: 'Data inválida' }

  validates :status, inclusion: { in: ['Pendente', 'Realizada', 'Faltou', 'Cancelada'], message: 'Status de consulta inválido.', default: 'Pendente' }

  validates :date_and_horary, date_and_horary: true
  before_create :generate_google_meet_link

  def update_status
    consult_date = DateTime.new(
      self.consultation_date.year,
      self.consultation_date.month,
      self.consultation_date.day,
      self.horary.split(':').first.to_i,
      self.horary.split(':').last.to_i
    )

    self.update!(status: 'Faltou') if consult_date < Date.today
  end

  private

  def generate_google_meet_link
    # hotfix
    self.link = 'https://meet.google.com/ybh-rvfi-pux'
  end

  def date_and_horary_validation
    if self.doctor.consultations.where.not(id: self.id).where(patient_id: self.patient_id, consultation_date: self.consultation_date, horary: self.horary).present? 
      self.errors.add(:horary, 'Horário indisponível!')
    end
    
    if self.horary.split(':').first.to_i > 7 && self.horary.split(':').first.to_i < 20 && self.horary.split(':').last.to_i >= 0 && self.horary.split(':').last.to_i <= 59
      self.errors.add(:horary, 'Horário indisponível!')
    end
  end
end
