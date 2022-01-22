class CreateAnamnesis < ActiveRecord::Migration[6.1]
  def change
    create_table :anamnesis do |t|
      t.references :occupation_area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
