class CreatePagamentos < ActiveRecord::Migration[5.0]
  def change
    create_table :pagamentos do |t|
      t.string :codigo
      t.string :formaPagamento
      t.integer :banco_id
      t.integer :conta_bancaria_id
      t.string :numeroTalao
      t.date :dataPagamento
      t.float :valorTalao
      t.float :valorUtilizado
 
      t.timestamps
    end
  end
end
