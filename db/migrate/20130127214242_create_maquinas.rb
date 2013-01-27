class CreateMaquinas < ActiveRecord::Migration
  def change
    create_table :maquinas do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
