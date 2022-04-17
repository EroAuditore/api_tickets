class Agente < ApplicationRecord
    validates :nombre, presence: true, allow_blank: false
end
