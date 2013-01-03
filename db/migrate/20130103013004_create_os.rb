class CreateOs < ActiveRecord::Migration
  def change
    create_table :os do |t|
      t.reference :cliente_id
      t.reference :user_id
      t.reference :produto_id
      t.text :descricao
      t.string :valor
      t.date :criacao
      t.text :observacao
      t.string :status

      t.timestamps
    end
  end
end
