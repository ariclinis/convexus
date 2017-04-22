class CreateContaBancaria < ActiveRecord::Migration[5.0]
  def change
    create_table :conta_bancaria do |t|
      t.string :descricao
      t.integer :banco_id
      t.string :tipoConta
      t.integer :moeda_id
      t.string :estado
      t.integer :utilizador_id

      t.timestamps
    end
  end
end
