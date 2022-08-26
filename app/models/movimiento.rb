class Movimiento < ApplicationRecord
    has_many :depositos
    has_many :comisiones
    has_many :retornos
end
