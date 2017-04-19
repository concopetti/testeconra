class CreateCarros < ActiveRecord::Migration[5.0]
  def change
    create_table :carros do |t|
      t.string :nome
      t.string :modelo
      t.string :marca

      t.timestamps
    end
  end
end
