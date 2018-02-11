class Referral < ApplicationRecord
  belongs_to :user
  belongs_to :student
  has_many :students
  has_many :categories
end
