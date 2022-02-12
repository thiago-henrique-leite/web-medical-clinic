class AddStatusAndHoraryToConsultations < ActiveRecord::Migration[6.1]
  def change
    add_column :consultations, :status, :string, default: 'Pendente'
    add_column :consultations, :horary, :string
  end
end
