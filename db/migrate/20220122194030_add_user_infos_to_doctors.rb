class AddUserInfosToDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :name, :string
    add_column :doctors, :cpf, :string
    add_column :doctors, :birthday, :date
    add_column :doctors, :phone, :string
  end
end
