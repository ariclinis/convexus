class CreateBancos < ActiveRecord::Migration[5.0]
  def change
    create_table :bancos do |t|
      t.string :CodBanco
      t.string :descricao
      t.integer :estado
      t.integer :utilizador

      t.timestamps
    end
  end
end
