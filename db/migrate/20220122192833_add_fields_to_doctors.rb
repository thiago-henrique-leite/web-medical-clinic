class AddFieldsToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :crm, :integer
    add_reference :doctors, :occupation_area, null: false, foreign_key: true
  end
end
