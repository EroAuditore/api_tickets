class CreateSolicitudesFacturas < ActiveRecord::Migration[7.0]
  def change
    create_table :solicitudes_facturas do |t|
      t.string :estatus, :default => 'abierto'
      t.decimal :total, precision: 10, scale: 2, :default => 0
      t.text :comentario, :default => ''
      t.belongs_to :agente
      t.belongs_to :cliente
      t.timestamps
    end
  end
end
