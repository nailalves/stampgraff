class CreateOrdems < ActiveRecord::Migration
  def change
    create_table :ordems do |t|
      t.references :cliente
      t.references :user
      t.references :produto
			t.references :papel
			t.references :maquina
      t.text :descricao
      t.string :valor
      t.date :criacao
      t.text :observacao
      t.string :status

      t.timestamps
    end
    add_index :ordems, :cliente_id
    add_index :ordems, :user_id
    add_index :ordems, :produto_id
		add_index :ordems, :papel_id
		add_index :ordems, :maquina_id
  end
end
