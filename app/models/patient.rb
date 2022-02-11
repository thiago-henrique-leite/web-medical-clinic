class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :consultations

  MARITAL_STATUSES = %w[Solteiro Casado Separado Divorciado Viúvo].freeze

  validates :name,
    length: { minimum: 5 },
    format: { with: /[[:alpha:]][[:space:]]+[[:alpha:]]/, message: 'Deve conter sobrenome' }
    
  validates :cpf, cpf: true, uniqueness: true
  validates :phone, phone: true
  validates :zipcode, cep: true
  validates :profession, presence: true
  validates :health_insurance, presence: true
  validates :card_number, presence: true, numericality: { only_integer: true }, uniqueness: true
  validates :address_number, allow_blank: true, allow_nil: true, numericality: true
    
  validates :birthday,
    timeliness: { before: -> { Date.current }, type: :date, before_message: 'Data inválida' }

  validates :marital_status, 
    inclusion: { in: %w[Solteiro Casado Separado Divorciado Viúvo], message: 'Estado civil inválido.' } 
    
  validates :gender, 
    inclusion: { in: %w[M F], message: 'Gênero inválido.' }
    
  after_create :fill_address_by_zipcode
  after_create :format_cpf

  def format_cpf
    self.cpf = CPF.new(self.cpf).formatted
  end

  def fill_address_by_zipcode
    address = Correios::CEP::AddressFinder.new.get(self.zipcode)

    self.city = address[:city]
    self.state = address[:state]
    self.neighborhood = address[:neighborhood]
    self.address = address[:address]
    self.save!
  end     
end
