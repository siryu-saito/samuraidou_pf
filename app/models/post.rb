class Post < ApplicationRecord
  belongs_to :user
  has_many :post_images, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image
  
  def user
    return User.find_by(id: self.user_id)
  end
  
end
