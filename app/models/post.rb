class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :post_images, dependent: :destroy

  accepts_attachments_for :post_images, attachment: :image

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :title, {length: {in: 1..15} }
  validates :address, {presence: true}
  validates :text, {presence: true}
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true

end
