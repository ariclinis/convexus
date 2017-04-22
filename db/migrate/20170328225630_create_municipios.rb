class CreateMunicipios < ActiveRecord::Migration[5.0]
  def change
    create_table :municipios do |t|
      t.string :descricao
      t.string :codigo
      t.integer :provincia_id

      t.timestamps
    end
  end
end
