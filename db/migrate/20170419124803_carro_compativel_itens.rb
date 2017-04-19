class CarroCompativelItens < ActiveRecord::Migration[5.0]
  def change
  	create_table :carro_compativel_itens do |t|
    	t.integer :carro_pai_id, 	null: false
  		t.integer :carro_filho_id, null: false
    end

    add_foreign_key :carro_compativel_itens, :perfis, column: :carro_pai_id
    add_foreign_key :carro_compativel_itens, :perfis, column: :carro_filho_id
  end
end
