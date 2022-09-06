class CreateComisiones < ActiveRecord::Migration[7.0]
  def change
    create_table :comisiones do |t|
      t.string :tipo, :default => ''
      t.decimal :total, precision: 10, scale: 2, :default => 0
      t.text :comentario, :default => ''
      t.decimal :porcentaje, precision: 10, scale: 2, :default => 0
      t.belongs_to :movimiento

      t.timestamps
    end
  end
end
