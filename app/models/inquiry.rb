class Inquiry < ApplicationRecord
  validates :name, {presence: true}
  validates :email, {presence: true}
  validates :message, {length: {minimum: 10}}
end