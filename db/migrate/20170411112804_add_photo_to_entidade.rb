class AddPhotoToEntidade < ActiveRecord::Migration[5.0]
  def change
    add_column :entidades, :foto, :string
  end
end
