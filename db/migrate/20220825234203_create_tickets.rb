class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.belongs_to :movimiento
      t.belongs_to :solicitud_factura
      t.timestamps
    end
  end
end
