class AddAwnsersToAnamnesisConsultation < ActiveRecord::Migration[6.1]
  def change
    add_column :anamnesis_consultations, :answer1, :text
    add_column :anamnesis_consultations, :answer2, :text
    add_column :anamnesis_consultations, :answer3, :text
    add_column :anamnesis_consultations, :answer4, :text
    add_column :anamnesis_consultations, :answer5, :text
    add_column :anamnesis_consultations, :answer6, :text
    add_column :anamnesis_consultations, :answer7, :text
    add_column :anamnesis_consultations, :answer8, :text
  end
end
