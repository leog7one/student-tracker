class GradeLevel < ApplicationRecord

  has_many :students
  has_many :homerooms
  has_many :referrals
  has_many :referrals, through: :students
  has_many :referrals, through: :homerooms

end
