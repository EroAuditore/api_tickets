class CreateRetornos < ActiveRecord::Migration[7.0]
  def change
    create_table :retornos do |t|
      t.decimal :total, precision: 10, scale: 2, :default => 0
      t.string :nombre, :default => ''
      t.text :comentario, :default => ''
      t.string :cuenta, :default => ''
      t.string :clabe, :default => ''
      t.string :swift, :default => ''
      t.string :banco, :default => ''
      t.string :dir_banco, :default => ''
      t.string :no_tarjeta, :default => ''
      t.boolean :valido, :default => false
      t.belongs_to :movimiento
      t.timestamps
    end
  end
end
