class CreateGorevs < ActiveRecord::Migration[7.0]
  def change
    create_table :gorevs do |t|
      t.string :isim
      t.boolean :durum, default: false
      t.text :notlar, default: ""
      t.integer :oncelik, default: 0
      t.date :sontarih, default: Date.today

      t.timestamps
    end
  end
end
