# Populando o Banco de Dados da Aplicação

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

## Populando a tabela de Anaminesis
occupation_areas.each do |name, description|
  Anamnesi.find_or_create_by(occupation_area_id: 1)
end

## Populando a tabela de Consultations
Consultation.find_or_create_by(patient_id: 1, doctor_id: 5, consultation_date: Date.parse('10/07/2022'))

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