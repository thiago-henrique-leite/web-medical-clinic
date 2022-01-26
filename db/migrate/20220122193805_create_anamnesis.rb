class CreateAnamnesis < ActiveRecord::Migration[6.1]
  def change
    create_table :anamnesis do |t|
      t.references :speciality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
