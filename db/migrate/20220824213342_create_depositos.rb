class CreateDepositos < ActiveRecord::Migration[7.0]
  def change
    create_table :depositos do |t|
      t.decimal :total, precision: 10, scale: 2
      t.string :banco
      t.date :fecha
      t.boolean :valido
      t.string :empresa
      t.string :nombre
      
      t.belongs_to :movimiento
      t.timestamps
    end
  end
end
