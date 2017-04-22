class CreateProvincia < ActiveRecord::Migration[5.0]
  def change
    create_table :provincia do |t|
      t.string :descricao
      t.string :codigo
      t.string :pais

      t.timestamps
    end
  end
end
