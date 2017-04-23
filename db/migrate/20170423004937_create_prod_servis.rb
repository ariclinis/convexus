class CreateProdServis < ActiveRecord::Migration[5.0]
  def change
    create_table :prod_servis do |t|
      t.string :codigo
      t.string :descricao
      t.float :valor_unitario
      t.integer :id_imposto
      t.integer :id_estado
      t.integer :id_utilizador

      t.timestamps
    end
  end
end
