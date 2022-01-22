class AddFieldsToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :health_insurance, :string
    add_column :patients, :card_number, :string
    add_column :patients, :marital_status, :string
    add_column :patients, :gender, :string
    add_column :patients, :profession, :string
    add_column :patients, :zipcode, :string
    add_column :patients, :address, :string
    add_column :patients, :state, :string
    add_column :patients, :neighborhood, :string
    add_column :patients, :city, :string
    add_column :patients, :address_number, :integer
  end
end
