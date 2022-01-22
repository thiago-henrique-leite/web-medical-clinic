class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :consultations
  belongs_to :occupation_area

  validates :name,
    length: { minimum: 5 },
    format: { with: /[[:alpha:]][[:space:]]+[[:alpha:]]/, message: 'Deve conter sobrenome' }
    
  validates :cpf, cpf: true
  validates :phone, phone: true
  validates :crm, presence: true, numericality: { only_integer: true }

  validates :birthday, allow_blank: true, allow_nil: true,
    timeliness: { before: -> { Date.current }, type: :date, before_message: 'Data inválida' }

  after_create :fill_address_by_zipcode

  private

  def format_cpf
    self.cpf = CPF.new(self.cpf).formatted
  end
end
