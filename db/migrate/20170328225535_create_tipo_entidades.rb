class CreateTipoEntidades < ActiveRecord::Migration[5.0]
  def change
    create_table :tipo_entidades do |t|
      t.string :descricao
      t.string :codigo

      t.timestamps
    end
  end
end
