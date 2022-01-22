class AddUserInfosToPatients < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :name, :string
    add_column :patients, :cpf, :string
    add_column :patients, :birthday, :date
    add_column :patients, :phone, :string
  end
end
