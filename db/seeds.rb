# Populando o Banco de Dados da Aplicação

ActiveRecord::Base.transaction do
  ## Populando a tabela de Specialities
  specialities = {
    'Cardiologia' => 'A Cardiologia se dedica ao cuidado de um dos principais órgãos do corpo humano: o coração.',
    'Dermatologia' => 'Voltada para o diagnóstico e tratamento das doenças de pele.',
    'Oncologia' => 'Área voltada para o diagnóstico e tratamento do câncer.',
    'Ortopedia' => 'Especialidade médica que cuida da saúde do aparelho locomotor, como os ossos, músculos, tendões, ligamentos, articulações e nervos.',
    'Pediatria' => 'Área da Medicina que direciona o foco para crianças e jovens.',
    'Psiquiatria' => 'Voltada para o diagnóstico e tratamento das doenças mentais.',
    'Ginecologia' => 'Prática da medicina que lida diretamente com a saúde do aparelho reprodutor feminino e mamas.',
  }

  specialities.each do |name, description|
    Speciality.find_or_create_by(name: name, description: description)
  end

  ## Populando a tabela de Doctors
  Doctor.create!( email: 'medico@email.com',  crm: '1213',  speciality_id: 1,  name: 'Rogers Campanello', cpf: '966.510.320-20',  birthday: Date.parse('13/03/1967'),  phone: '(11) 96723-2198', password: 'medico123')
  Doctor.create!( email: 'medico1@email.com', crm: '2345',  speciality_id: 2,  name: 'Mário de Andrade',  cpf: '441.994.670-92',  birthday: Date.parse('23/03/1977'),  phone: '(11) 94323-2198', password: 'medico123')
  Doctor.create!( email: 'medico2@email.com', crm: '4567',  speciality_id: 3,  name: 'Roberto Damasceno', cpf: '373.314.600-05',  birthday: Date.parse('21/03/1969'),  phone: '(11) 96793-2198', password: 'medico123')
  Doctor.create!( email: 'medico3@email.com', crm: '5678',  speciality_id: 4,  name: 'Ana Luísa',         cpf: '309.793.740-49',  birthday: Date.parse('01/03/1987'),  phone: '(11) 93829-2198', password: 'medico123')
  Doctor.create!( email: 'medico4@email.com', crm: '6789',  speciality_id: 5,  name: 'Helena Maria',      cpf: '467.245.230-10',  birthday: Date.parse('07/03/1978'),  phone: '(11) 98382-2198', password: 'medico123')

  ## Populando a tabela de Patients
  Patient.create!(email: 'paciente@email.com',  health_insurance: 'SulAmérica Saúde', card_number: '913746', marital_status: 'Solteiro',   gender: 'M', profession: 'Desenvolvedor de Software', zipcode: '05020-000', address_number: 200, name: 'José Silva',      cpf: '522.380.240-34', birthday: Date.parse('13/05/1999'), phone: '(11) 98872-9832', password: 'paciente123')
  Patient.create!(email: 'paciente1@email.com', health_insurance: 'UNIMED',           card_number: '738293', marital_status: 'Casado',     gender: 'F', profession: 'Advogada Criminalista',     zipcode: '12328-140', address_number: 200, name: 'Maria Clara',     cpf: '205.320.590-34', birthday: Date.parse('02/03/1987'), phone: '(12) 98872-6434', password: 'paciente123')
  Patient.create!(email: 'paciente2@email.com', health_insurance: 'Bradesco Saúde',   card_number: '928192', marital_status: 'Divorciado', gender: 'F', profession: 'Fisioterapeuta',            zipcode: '05020-000', address_number: 200, name: 'Giovanna Torres', cpf: '456.923.630-89', birthday: Date.parse('21/07/1977'), phone: '(99) 98872-5323', password: 'paciente123')
  Patient.create!(email: 'paciente3@email.com', health_insurance: 'Notredame',        card_number: '572113', marital_status: 'Solteiro',   gender: 'F', profession: 'Arquiteta',                 zipcode: '05020-000', address_number: 200, name: 'Rafaela Silva',   cpf: '933.322.440-86', birthday: Date.parse('17/12/1969'), phone: '(83) 98872-2124', password: 'paciente123')
  Patient.create!(email: 'paciente4@email.com', health_insurance: 'Porto Seguro',     card_number: '213838', marital_status: 'Casado',     gender: 'M', profession: 'Dentista',                  zipcode: '05020-000', address_number: 200, name: 'Marcos Oliveira', cpf: '196.867.760-79', birthday: Date.parse('30/09/1982'), phone: '(14) 98872-2132', password: 'paciente123')

  ## Populando a tabela de Anaminesis
  specialities.each do |name, description|
    Anamnesi.find_or_create_by(speciality_id: 1)
  end

  ## Populando a tabela de Consultations
  Consultation.find_or_create_by(patient_id: 1, doctor_id: 1, consultation_date: Date.parse('10/07/2022'), horary: '10:20')
  Consultation.find_or_create_by(patient_id: 2, doctor_id: 1, consultation_date: Date.parse('01/08/2022'), horary: '11:10')
  Consultation.find_or_create_by(patient_id: 3, doctor_id: 1, consultation_date: Date.parse('18/09/2022'), horary: '14:00')
  Consultation.find_or_create_by(patient_id: 4, doctor_id: 1, consultation_date: Date.parse('28/10/2022'), horary: '15:10')
  Consultation.find_or_create_by(patient_id: 5, doctor_id: 1, consultation_date: Date.parse('30/11/2022'), horary: '16:30')
  Consultation.find_or_create_by(patient_id: 1, doctor_id: 2, consultation_date: Date.parse('10/07/2022'), horary: '10:20')
  Consultation.find_or_create_by(patient_id: 2, doctor_id: 2, consultation_date: Date.parse('01/08/2022'), horary: '11:10')
  Consultation.find_or_create_by(patient_id: 3, doctor_id: 2, consultation_date: Date.parse('18/09/2022'), horary: '14:00')
  Consultation.find_or_create_by(patient_id: 4, doctor_id: 2, consultation_date: Date.parse('28/10/2022'), horary: '15:10')
  Consultation.find_or_create_by(patient_id: 5, doctor_id: 2, consultation_date: Date.parse('30/11/2022'), horary: '16:30')
  Consultation.find_or_create_by(patient_id: 1, doctor_id: 3, consultation_date: Date.parse('10/07/2022'), horary: '10:20')
  Consultation.find_or_create_by(patient_id: 2, doctor_id: 3, consultation_date: Date.parse('01/08/2022'), horary: '11:10')
  Consultation.find_or_create_by(patient_id: 3, doctor_id: 3, consultation_date: Date.parse('18/09/2022'), horary: '14:00')
  Consultation.find_or_create_by(patient_id: 4, doctor_id: 3, consultation_date: Date.parse('28/10/2022'), horary: '15:10')
  Consultation.find_or_create_by(patient_id: 5, doctor_id: 3, consultation_date: Date.parse('30/11/2022'), horary: '16:30')
  Consultation.find_or_create_by(patient_id: 1, doctor_id: 4, consultation_date: Date.parse('10/07/2022'), horary: '10:20')
  Consultation.find_or_create_by(patient_id: 2, doctor_id: 4, consultation_date: Date.parse('01/08/2022'), horary: '11:10')
  Consultation.find_or_create_by(patient_id: 3, doctor_id: 4, consultation_date: Date.parse('18/09/2022'), horary: '14:00')
  Consultation.find_or_create_by(patient_id: 4, doctor_id: 4, consultation_date: Date.parse('28/10/2022'), horary: '15:10')
  Consultation.find_or_create_by(patient_id: 5, doctor_id: 4, consultation_date: Date.parse('30/11/2022'), horary: '16:30')
  Consultation.find_or_create_by(patient_id: 1, doctor_id: 5, consultation_date: Date.parse('10/07/2022'), horary: '10:20')
  Consultation.find_or_create_by(patient_id: 2, doctor_id: 5, consultation_date: Date.parse('01/08/2022'), horary: '11:10')
  Consultation.find_or_create_by(patient_id: 3, doctor_id: 5, consultation_date: Date.parse('18/09/2022'), horary: '14:00')
  Consultation.find_or_create_by(patient_id: 4, doctor_id: 5, consultation_date: Date.parse('28/10/2022'), horary: '15:10')
  Consultation.find_or_create_by(patient_id: 5, doctor_id: 5, consultation_date: Date.parse('30/11/2022'), horary: '16:30')

  ## Populando a tabela de Prescriptions
  5.times do |index|
    Prescription.find_or_create_by(consultation_id: index+1, description: 'Realizar exame de sangue.')
    Prescription.find_or_create_by(consultation_id: index+2, description: 'Realizar exame de urina.')
    Prescription.find_or_create_by(consultation_id: index+3, description: 'Paracetamol 2x ao dia por 7 dias.')
    Prescription.find_or_create_by(consultation_id: index+4, description: 'Ressonância do tórax.')
    Prescription.find_or_create_by(consultation_id: index+5, description: 'Raio x da cabeça.')
  end


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

  ## Populando tabela da Anamnesis Consultation
  4.times do |index|
    AnamnesisConsultation.create!(anamnesi_id: 1, consultation_id: index+1, answer: 'Não', answer1: 'Não', answer2: 'Não', answer3: 'Não', answer4: 'Não', answer5: 'Não', answer6: 'Não', answer7: 'Não', answer8: 'Não')
  end
end