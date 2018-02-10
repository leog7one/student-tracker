class Student < ApplicationRecord
  has_many :users
  has_many :referrals
end
