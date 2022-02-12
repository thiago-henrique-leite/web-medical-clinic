json.extract! consultation, :id, :patient_id, :doctor_id, :consultation_date, :link, :status, :horary, :created_at, :updated_at
json.url consultation_url(consultation, format: :json)
