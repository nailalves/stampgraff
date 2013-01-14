class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :rg
      t.date :nascimento
      t.string :telefone1
      t.string :telefone2
      t.string :celular
      t.string :endereco
      t.string :email
      t.string :status

      t.timestamps
    end
  end
end
