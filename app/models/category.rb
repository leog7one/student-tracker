class Category < ApplicationRecord
  has_many :referrals

  validates :name, presence: true, uniqueness: true
end
