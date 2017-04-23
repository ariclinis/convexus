class CreateTipoDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_docs do |t|
      t.string :codigo
      t.string :descricao
      t.integer :id_operacoes_fatura
      t.integer :id_estado
      t.integer :id_utilizador

      t.timestamps
    end
  end
end
