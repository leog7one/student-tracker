class Student < ApplicationRecord
  searchkick word_start: [:first_name, :last_name, :homeroom, :grade_level, :student_id_number]
  
  has_many :users
  has_many :referrals, dependent: :destroy
end
