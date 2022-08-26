class CreateComisiones < ActiveRecord::Migration[7.0]
  def change
    create_table :comisiones do |t|
      t.string :tipo
      t.decimal :total, precision: 10, scale: 2
      t.text :comentario
      t.decimal :porcentaje, precision: 10, scale: 2
      t.belongs_to :movimiento

      t.timestamps
    end
  end
end
