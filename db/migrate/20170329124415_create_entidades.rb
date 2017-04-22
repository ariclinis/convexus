class CreateEntidades < ActiveRecord::Migration[5.0]
  def change
    create_table :entidades do |t|
      t.string :nome
      t.string :bi
      t.integer :provincia_id
      t.integer :municipio_id
      t.integer :bairro_id
      t.string :pai
      t.string :mae
      t.string :nif
      t.integer :tipoEntidade
      t.string :nacionalidade
      t.string :profissao
      t.string :genero
      t.string :estadoCivil
      t.string :telefone
      t.string :email
      t.integer :homePage
      t.string :estado
      t.string :foto
      t.timestamps

    end
  end
end
