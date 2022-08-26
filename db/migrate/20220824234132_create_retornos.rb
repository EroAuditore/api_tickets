class CreateRetornos < ActiveRecord::Migration[7.0]
  def change
    create_table :retornos do |t|
      t.decimal :total, precision: 10, scale: 2
      t.string :nombre
      t.text :comentario
      t.string :cuenta
      t.string :clabe
      t.string :swift
      t.string :banco
      t.string :dir_banco
      t.string :no_tarjeta
      t.boolean :valido
      t.belongs_to :movimiento
      t.timestamps
    end
  end
end
