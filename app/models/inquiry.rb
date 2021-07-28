class Inquiry < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, {presence: true}
  validates :email, {presence: true}
  validates :message, {length: {minimum: 10}}
end