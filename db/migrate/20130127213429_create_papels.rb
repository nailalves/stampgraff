class CreatePapels < ActiveRecord::Migration
  def change
    create_table :papels do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
