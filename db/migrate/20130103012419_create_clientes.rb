class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
			t.string :contato
      t.string :rg
      t.date :nascimento
      t.string :telefone
      t.string :celular2
      t.string :celular
      t.string :endereco
      t.string :email_empresa
			t.string :email_pessoal

      t.timestamps
    end
  end
end
