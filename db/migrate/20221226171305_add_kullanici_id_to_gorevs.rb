class AddKullaniciIdToGorevs < ActiveRecord::Migration[7.0]
  def change
    add_reference :gorevs, :kullanici, null: false, foreign_key: true, default:0
  end
end
