class CreateOperacoesFaturas < ActiveRecord::Migration[5.0]
  def change
    create_table :operacoes_faturas do |t|
      t.string :codigo
      t.string :descricao
      t.integer :id_estado
      t.integer :id_utilizador

      t.timestamps
    end
  end
end
