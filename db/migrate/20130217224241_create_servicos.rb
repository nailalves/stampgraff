class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.references :produto
      t.references :papel
      t.references :maquina
      t.text :observacao
      t.float :valor
      t.references :ordem
			t.integer :quantidade
			t.string :tamanho

      t.timestamps
    end
    add_index :servicos, :produto_id
    add_index :servicos, :papel_id
    add_index :servicos, :maquina_id
    add_index :servicos, :ordem_id
  end
end
