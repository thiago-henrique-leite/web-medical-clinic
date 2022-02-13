class DateAndHoraryValidator < ActiveModel::Validator
  def validate(record)
    if record.doctor.consultations.where.not(id: record.id).where(consultation_date: record.consultation_date, horary: record.horary).present? 
      record.errors.add(:horario, 'Médico já possui consulta agendada para este horário!')
    end
    
    unless record.horary.split(':').first.to_i > 7 && record.horary.split(':').first.to_i < 20 && record.horary.split(':').last.to_i >= 0 && record.horary.split(':').last.to_i <= 59
      record.errors.add(:horario, 'não é válido! Horários disponíveis - Das 08:00 às 19:59')
    end
  end
end