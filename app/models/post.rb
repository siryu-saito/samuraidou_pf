class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :post_images, dependent: :destroy

  accepts_attachments_for :post_images, attachment: :image

  validates :title, {length: {in: 1..15} }
  validates :address, {presence: true}
  validates :text, {presence: true}
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

  # latitude, longitudeを登録すると、addressカラムを自動で取得する
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # 検索キーワードの部分一致すれば、その投稿を出力する
  def self.search(keyword)
    where(["address like?","%#{keyword}%"])
  end
end
