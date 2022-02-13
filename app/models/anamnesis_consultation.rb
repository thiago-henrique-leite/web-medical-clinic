class AnamnesisConsultation < ApplicationRecord
  belongs_to :anamnesi
  belongs_to :consultation

  validates :answer, presence: true, allow_blank: true, allow_nil: true

  def get_answers
    response = ''
    response << Anamnesi.find(1).questions[0].description
    response << ' '
    response << self.answer if self.answer.present?
    response << "<br>"
    response << Anamnesi.find(1).questions[1].description
    response << ' '
    response << self.answer1 if self.answer1.present?
    response << "<br>"
    response << Anamnesi.find(1).questions[2].description
    response << ' '
    response << self.answer2 if self.answer2.present?
    response << "<br>"
    response << Anamnesi.find(1).questions[3].description
    response << ' '
    response << self.answer3 if self.answer3.present?
    response << "<br>"
    response << Anamnesi.find(1).questions[4].description
    response << ' '
    response << self.answer4 if self.answer4.present?
    response << "<br>" 
    response << Anamnesi.find(1).questions[5].description
    response << ' '
    response << self.answer5 if self.answer5.present?
    response << "<br>"
    response << Anamnesi.find(1).questions[6].description
    response << ' '
    response << self.answer6 if self.answer6.present?
    response << "<br>"
    response << Anamnesi.find(1).questions[7].description
    response << ' '
    response << self.answer7 if self.answer7.present?
    response << "<br>"
    response << Anamnesi.find(1).questions[8].description
    response << ' '
    response << self.answer8 if self.answer8.present?
    response << "<br>"

    return response
  end
end
