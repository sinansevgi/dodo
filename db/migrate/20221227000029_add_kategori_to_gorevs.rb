class AddKategoriToGorevs < ActiveRecord::Migration[7.0]
  def change
    add_column :gorevs, :kategori, :integer, default: 0
  end
end
