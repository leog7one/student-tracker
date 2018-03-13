class Homeroom < ApplicationRecord

  has_many :students
  has_many :referrals
  has_many :referrals, through: :students

end
