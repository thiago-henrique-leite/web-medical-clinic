class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.references :consultation, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
