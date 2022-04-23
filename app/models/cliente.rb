class Cliente < ApplicationRecord
    belongs_to :agente
    validates :nombre, presence: true, allow_blank: false
    validates :rfc, presence: true, allow_blank: false
end
