class Homeroom < ApplicationRecord

  has_many :students
  has_many :referrals
  belongs_to :grade_level
  has_many :referrals, through: :students

end
