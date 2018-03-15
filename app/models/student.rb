class Student < ApplicationRecord
  # searchkick word_start: [:first_name, :last_name, :homeroom, :grade_level, :student_id_number, :full_name]

  def full_name
    "#{first_name} #{last_name}"
  end

  # def search_data
  # {
  #   full_name: full_name,
  #   first_name: first_name,
  #   last_name: last_name,
  #   homeroom: homeroom,
  #   grade_level: grade_level,
  #   student_id_number: student_id_number
  # }
  # end
  
  belongs_to :homeroom, required: false, dependent: :destroy
  belongs_to :grade_level
  has_many :users
  has_many :referrals, dependent: :destroy
  
  accepts_nested_attributes_for :homeroom
  accepts_nested_attributes_for :grade_level

end
