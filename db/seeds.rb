# Populando o Banco de Dados da Aplicação

ActiveRecord::Base.transaction do
  ## Populando a tabela de OccupationAreas
  occupation_areas = {
    'Cardiologia' => 'A Cardiologia se dedica ao cuidado de um dos principais órgãos do corpo humano: o coração.',
    'Dermatologia' => 'Voltada para o diagnóstico e tratamento das doenças de pele.',
    'Oncologia' => 'Área voltada para o diagnóstico e tratamento do câncer.',
    'Ortopedia' => 'Especialidade médica que cuida da saúde do aparelho locomotor, como os ossos, músculos, tendões, ligamentos, articulações e nervos.',
    'Pediatria' => 'Área da Medicina que direciona o foco para crianças e jovens.',
    'Psiquiatria' => 'Voltada para o diagnóstico e tratamento das doenças mentais.',
    'Ginecologia' => 'Prática da medicina que lida diretamente com a saúde do aparelho reprodutor feminino e mamas.',
  }

  occupation_areas.each do |name, description|
    OccupationArea.find_or_create_by(name: name, description: description)
  end

  ## Populando a tabela de Doctors
  Doctor.create!(
    email: 'medico@email.com',
    crm: '1213', 
    occupation_area_id: 1, 
    name: 'Olavo da Silva', 
    cpf: '966.510.320-20', 
    birthday: Date.parse('13/03/1967'), 
    phone: '(11) 96723-2198',
    password: 'medico123'
  )

  ## Populando a tabela de Patients
  Patient.create!(
    email: 'paciente@email.com', 
    health_insurance: 'SulAmérica Saúde',
    card_number: '913746', 
    marital_status: 'Solteiro', 
    gender: 'M', 
    profession: 'Desenvolvedor de Software', 
    zipcode: '05020-000', 
    address_number: 200, 
    name: 'João Pereira', 
    cpf: '369.151.630-00', 
    birthday: Date.parse('17/09/1999'), 
    phone: '(11) 98872-0921',
    password: 'paciente123'
  )

  ## Populando a tabela de Anaminesis
  occupation_areas.each do |name, description|
    Anamnesi.find_or_create_by(occupation_area_id: 1)
  end

  ## Populando a tabela de Consultations
  Consultation.find_or_create_by(patient_id: 1, doctor_id: 1, consultation_date: Date.parse('10/07/2022'))

  ## Populando a tabela de AnamnesisConsultations
  AnamnesisConsultation.find_or_create_by(anamnesi_id: 1, consultation_id: 1)

  ## Populando a tabela de Prescriptions
  Prescription.find_or_create_by(consultation_id: 1, description: 'Realizar exame de sangue.')

  ## Populando a tabela de Questions
  question_descriptions = [
    'Fuma?',
    'Possui alguma alergia?',
    'Teve febre nos últimos 14 dias?',
    'Teve crise de problemas respiratórios nos últimos 14 dias?',
    'Teve contato com alguém diagnosticado com COVID nos últimos 10 dias?',
    'Participou recentemente de algum encontro, reuniões ou aglomeração?',
    'Possui alguma doença crônica?',
    'Faz uso de algum medicamento?',
    'Possui algum problema de saúde?',
  ]

  question_descriptions.each do |description|
    Question.find_or_create_by(
      description: description,
      anamnesi_id: 1
    )
  end
end