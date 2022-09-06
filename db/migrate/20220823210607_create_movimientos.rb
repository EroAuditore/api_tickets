class CreateMovimientos < ActiveRecord::Migration[7.0]
  def change
    create_table :movimientos do |t|
      t.decimal :cantidad_total, precision: 10, scale: 2, :default => 0
      #Ex:- :default =>''
      t.decimal :depositos_total, precision: 10, scale: 2, :default => 0
      t.decimal :retornos_total, precision: 10, scale: 2, :default => 0
      t.decimal :comision_total, precision: 10, scale: 2, :default => 0
      t.decimal :comision_agente, precision: 10, scale: 2, :default => 0
      t.decimal :comision_oficina, precision: 10, scale: 2, :default => 0
      t.string :estatus, :default => 'abierto'
      t.string :estatus_deposito, :default => 'pendiente'
      t.string :estatus_retorno, :default => 'pendiente'
      t.string :estatus_comision, :default => 'pendiente'
      t.belongs_to :agente
      t.belongs_to :cliente
      
      t.timestamps
    end
  end
end
