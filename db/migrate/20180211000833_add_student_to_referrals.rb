class AddStudentToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_reference :referrals, :student, foreign_key: true
  end
end
