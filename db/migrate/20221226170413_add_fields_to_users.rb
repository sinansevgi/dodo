class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :kullanicis, :isim, :string
  end
end
