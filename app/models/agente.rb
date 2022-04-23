class Agente < ApplicationRecord
    validates :nombre, presence: true, allow_blank: false
    has_many :clientes
end
