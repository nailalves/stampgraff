class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
