class CreateSolicitudesFacturas < ActiveRecord::Migration[7.0]
  def change
    create_table :solicitudes_facturas do |t|
      t.string :estatus
      t.decimal :total, precision: 10, scale: 2
      t.text :comentario
      t.belongs_to :agente
      t.belongs_to :cliente
      t.timestamps
    end
  end
end
