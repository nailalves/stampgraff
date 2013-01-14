class CreateOs < ActiveRecord::Migration
  def change
    create_table :os do |t|
      t.references :cliente_id
      t.references :user_id
      t.references :produto_id
      t.text :descricao
      t.string :valor
      t.date :criacao
      t.text :observacao
      t.string :status

      t.timestamps
    end
  end
end
