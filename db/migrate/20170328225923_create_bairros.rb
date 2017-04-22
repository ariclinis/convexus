class CreateBairros < ActiveRecord::Migration[5.0]
  def change
    create_table :bairros do |t|
      t.string :descricao
      t.string :codigo
      t.integer :municipio_id

      t.timestamps
    end
  end
end
