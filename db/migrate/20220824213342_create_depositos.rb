class CreateDepositos < ActiveRecord::Migration[7.0]
  def change
    create_table :depositos do |t|
      t.decimal :total, precision: 10, scale: 2, :default => 0
      t.string :banco, :default => ''
      t.date :fecha
      t.boolean :valido, :default => false
      t.string :empresa, :default => ''
      t.string :nombre, :default => ''
      
      t.belongs_to :movimiento
      t.timestamps
    end
  end
end
