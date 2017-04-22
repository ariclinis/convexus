class CreateMoedas < ActiveRecord::Migration[5.0]
  def change
    create_table :moedas do |t|
      t.string :codigo
      t.string :descricao
      t.string :pais

      t.timestamps
    end
  end
end
