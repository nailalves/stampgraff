class CreateOrdems < ActiveRecord::Migration
  def change
    create_table :ordems do |t|
      t.references :cliente
      t.references :user
      t.date :criacao
      t.string :status
			t.string :forma_pagamento

      t.timestamps
    end
    add_index :ordems, :cliente_id
    add_index :ordems, :user_id
  end
end
