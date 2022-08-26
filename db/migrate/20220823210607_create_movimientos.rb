class CreateMovimientos < ActiveRecord::Migration[7.0]
  def change
    create_table :movimientos do |t|
      t.decimal :cantidad_total, precision: 10, scale: 2
      t.decimal :depositos_total, precision: 10, scale: 2
      t.decimal :retornos_total, precision: 10, scale: 2
      t.decimal :comision_total, precision: 10, scale: 2
      t.decimal :comision_agente, precision: 10, scale: 2
      t.decimal :comision_oficina, precision: 10, scale: 2
      t.string :estatus
      t.string :estatus_deposito
      t.string :estatus_retorno
      t.string :estatus_comision
      t.belongs_to :agente
      t.belongs_to :cliente
      
      t.timestamps
    end
  end
end
