class CreateUtilizadors < ActiveRecord::Migration[5.0]
  def change
    create_table :utilizadors do |t|
      t.string :nome
      t.string :nome_login
      t.string :email
      t.text :senha
      t.string :nivel_acesso
      t.string :estado

      t.timestamps
    end
  end
end
