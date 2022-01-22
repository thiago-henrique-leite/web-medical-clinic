class CreateOccupationAreas < ActiveRecord::Migration[6.1]
  def change
    create_table :occupation_areas do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
