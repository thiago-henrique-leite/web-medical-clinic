class CreateAnamnesisConsultations < ActiveRecord::Migration[6.1]
  def change
    create_table :anamnesis_consultations do |t|
      t.references :anamnesi, null: false, foreign_key: true
      t.references :consultation, null: false, foreign_key: true
      t.text :answer

      t.timestamps
    end
  end
end
