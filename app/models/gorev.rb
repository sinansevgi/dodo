class Gorev < ApplicationRecord
  after_update_commit { broadcast_append_to "gorevs"}
  belongs_to :kullanici

  validates :isim, presence: true
  enum oncelik: { dusuk: 0, onemli: 1, cok_onemli:2 }, _default: :dusuk
  enum kategori: { okul: 0, is: 1, ozel:2 }, _default: :okul

end
