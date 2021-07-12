class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :post_images, dependent: :destroy

  accepts_attachments_for :post_images, attachment: :image

end
