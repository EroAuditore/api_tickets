class CreateAgentes < ActiveRecord::Migration[7.0]
  def change
    create_table :agentes do |t|
      t.string :nombre
      t.timestamps
    end
  end
end
