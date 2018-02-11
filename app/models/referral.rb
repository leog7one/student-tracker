class Referral < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :category
  has_many :students
  has_many :categories
end
